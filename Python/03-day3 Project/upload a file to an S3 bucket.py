import boto3
s3 = boto3.resource('s3')
s3.meta.client.upload_file('/home/mac/Desktop/Python-Project/contacts.json', 'macz-bucket', 'contacts.json')