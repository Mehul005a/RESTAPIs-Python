# Define variables
$volumeName = "postgres"
$backupLocation = "D:\deqodeTraining\RESTAPIs\Backup"
$timestamp = Get-Date -Format "yyyyMMdd-HHmm"
$backupFileName = "backup_$timestamp.tar"


# Docker command to create a backup
docker run --rm --volumes-from $volumeName -v ${PWD}:/backup ubuntu tar cvf /backup/$backupFileName /dbdata

# Move the backup file to the specified location
Move-Item -Path "${PWD}\$backupFileName" -Destination $backupLocation
