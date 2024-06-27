import os
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
import random
import json

app = Flask(__name__)

# Debugging: Print environment variables
print("DATABASE_URL:", os.environ.get('DATABASE_URL'))

app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URL')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Item(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    price = db.Column(db.Float, nullable=False)

    def __repr__(self):
        return f'Item(id={self.id}, name={self.name}, price={self.price})'


def create_and_populate_db():
    db.create_all()
    if Item.query.count() == 0:  # Populate only if the table is empty
        items = [
            {"name": f"Item {i}", "price": random.uniform(10, 100)} for i in range(1, 101)
        ]
        for item in items:
            db.session.add(Item(name=item['name'], price=item['price']))
        db.session.commit()

@app.route('/items', methods=['GET'])
def get_items():
    # Get pagination parameters from query string
    page = request.args.get('page', 1, type=int)
    per_page = request.args.get('per_page', 10, type=int)

    # Get paginated items
    paginated_items = Item.query.paginate(page=page, per_page=per_page, error_out=False)

    items = [{'id': item.id, 'name': item.name, 'price': item.price} for item in paginated_items.items]

    # Return paginated items and pagination info
    return jsonify({
        'items': items,
        'total': paginated_items.total,
        'pages': paginated_items.pages,
        'page': paginated_items.page,
        'per_page': paginated_items.per_page
    })

@app.route('/item', methods=['GET'])
def get_item():
    name = request.args.get('name')
    item = Item.query.filter_by(name=name).first()
    if item:
        return jsonify({'name': item.name, 'price': item.price})
    return {"message": "Record doesn't exist"}, 404

@app.route('/item', methods=['POST'])
def add_item():
    try:
        request_data = request.get_json()
        if 'name' not in request_data or 'price' not in request_data:
            return {"message": "Name and Price are required fields"}, 400    
        new_item = Item(name=request_data['name'], price=request_data['price'])
        db.session.add(new_item)
        db.session.commit()
        return {"message": "Item Added Successfully"}, 201
    except Exception as e:
        db.session.rollback()
        return {"message": f"Failed to add item: {str(e)}"}, 500
    finally:
        db.session.close()

@app.route('/item', methods=['PUT'])
def update_item():
    try:
        request_data = request.get_json()
        item_name = request_data.get('name')
        new_price = request_data.get('price')
        item = Item.query.filter_by(name=item_name).first()
        if not item:
            return {"message": "Item not found"}, 404
        item.price = new_price
        db.session.commit()
        return {"message": "Item Updated Successfully"}
    except Exception as e:
        db.session.rollback()
        return {"message": f"Failed to update item: {str(e)}"}, 500
    finally:
        db.session.close()

@app.route('/item', methods=['DELETE'])
def delete_item():
    try:
        name = request.args.get('name')
        item = Item.query.filter_by(name=name).first()
        if item:
            db.session.delete(item)
            db.session.commit()
            return {"message": "Item deleted Successfully"}
        return {"message": "Record doesn't exist"}, 404
    except Exception as e:
        db.session.rollback()
        return {"message": f"Failed to delete item: {str(e)}"}, 500
    finally:
        db.session.close()

if __name__ == '__main__':
    create_and_populate_db()  # Call this to set up the database schema and populate data
    app.run(debug=True)

# items = [
#     {
        
#         "name" : "Apple Mojito",
#         "Price" : 159
#     },
#     {    
#             "name" : "Veg Momos",
#             "Price" : 69
#     }
# ]
# @app.get('/items')   #http://127.0.0.1:5000/get_items
# def get_items():
#     return {"items":items}

# @app.get('/item/<string:name>')   #http://127.0.0.1:5000/get_item/name #Dynamic URLs
# def get_item(name):
#     for item in items:
#         if name == item['name']:
#             return item
#     return {"message" : "Record doesn't exists"}

# @app.get('/item')   #http://127.0.0.1:5000/get_item   #Query Parameter
# def get_item():
#     name = request.args.get('name')
#     for item in items:
#         if name == item['name']:
#             return item
#     return {"message" : "Record doesn't exists"}


# @app.post('/item')   #http://127.0.0.1:5000/add_item
# def add_item():
#     request_data = request.get_json()
#     items.append(request_data)
#     return {"message": "Item Added Successfully"}, 201

# @app.put('/item')   #http://127.0.0.1:5000/update_item
# def update_item():
#     request_data = request.get_json()
#     for item in items:
#         if item['name'] == request_data['name']:
#             item['Price'] = request_data['Price']
#             return {"message": "Item Updated Successfully"}
# #     return {"message": "Record doesn't exists "}, 404

# # @app.delete('/item')     #http://127.0.0.1:5000/delete_item
# # def delete_item():
# #     request_data = request.get_json()
# #     for item in items:
# #         if item['name'] == request_data['name']:
# #             items.remove(request_data)
# #             return {"message" : "Item deleted Successfully"}
# #     return {"message": "Record doesn't exists"}, 404

# 4

# @app.delete('/item')     #http://127.0.0.1:5000/delete_item
# def delete_item():
#     name =request.args.get('name')
#     for item in items:
#         if name == item['name']:
#             items.remove(item)
#             return {"message" : "Item deleted Successfully"}
#     return {"message": "Record doesn't exists"}, 404