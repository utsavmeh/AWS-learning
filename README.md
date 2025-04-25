# AWS S3 Presigned URL Generator

This simple Ruby script generates presigned URLs for uploading files directly to an AWS S3 bucket.

## AWS Configuration Setup

Before using this script, you need to configure your AWS credentials. There are several ways to do this:

### 1. Using AWS CLI (Recommended)

Install the AWS CLI and run:

```bash
aws configure
```

This will prompt you to enter:
- AWS Access Key ID
- AWS Secret Access Key
- Default region name (e.g., ap-south-1)
- Default output format (e.g., json)

### 2. Environment Variables

Set the following environment variables:

```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_REGION=ap-south-1
```

## Dependencies

This script requires the following gems:

```bash
bundle install
```

## Usage

The script generates a presigned URL for uploading a file to the 'demo-lambda-testing-v1' S3 bucket with a randomly generated UUID as the object key.

To run the script:

```bash
ruby create_presigned_url.rb
```

The script will output a presigned URL that can be used to upload a file to S3 using an HTTP PUT request. The URL is valid for 3000 seconds (50 minutes).

## How It Works

1. The script initializes an AWS S3 resource with the 'ap-south-1' region.
2. It creates a reference to an object with a random UUID in the 'demo-lambda-testing-v1' bucket.
3. It generates a presigned URL for a PUT operation that expires in 3000 seconds.
4. The URL is printed to the console.

## Example Usage with cURL

Once you have the presigned URL, you can use it to upload a file:

```bash
curl -X PUT -T "your_file.txt" "generated_presigned_url"
```

## Customization

To modify the script for your needs:
- Change the bucket name from 'demo-lambda-testing-v1' to your bucket
- Adjust the region if your bucket is in a different region
- Modify the expiration time (currently 3000 seconds) as needed

## TODO app for RDS and EC2 connection
[TODO app repository]([https://www.genome.gov/](https://github.com/utsavmeh/aws-learning-TODO-app))
