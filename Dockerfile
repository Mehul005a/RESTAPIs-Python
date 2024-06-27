#Import the baseimage from dockerhub
FROM python:alpine3.20

#Set the Working Directory 
WORKDIR /app

#Set the port of the container to be 5000
EXPOSE 5000

#Copy requirements.txt from local to Docker image
COPY requirements.txt .

#Install dependencies in the container
RUN pip install -r requirements.txt

#Copy the files from source to Image
COPY . .

#Running the container with command
CMD ["flask","run","--host","0.0.0.0"]
