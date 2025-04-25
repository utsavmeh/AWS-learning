require 'aws-sdk-s3'
require 'securerandom'

BUCKET_NAME = 'demo-lambda-testing-v1'
AWS_REGION = 'ap-south-1'
EXPIRATION_TIME_IN_SECONDS = 3000

def get_presigned_url
  s3 = Aws::S3::Resource.new(region: AWS_REGION)
  obj = s3.bucket(BUCKET_NAME).object(SecureRandom.uuid)
  url = obj.presigned_url(:put, expires_in: EXPIRATION_TIME_IN_SECONDS)
  puts url
end

get_presigned_url