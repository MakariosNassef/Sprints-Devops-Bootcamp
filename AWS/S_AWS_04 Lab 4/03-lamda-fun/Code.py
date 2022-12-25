import boto3
s3 = boto3.client('s3')

def lambda_hendler (event, context):
    bucket= target-bucket-makarios
    
    FileName= 'file-mac' + '.txt'
    
    s3.putobject(Backet-bucket, Key=FileName, Body='hello from s3 My name is Makarios Nassef Saad Mail:makarios059@gmail.com')
