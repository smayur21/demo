## Specifies the Region your Terraform Provider will server
provider "aws" {
  region = "us-east-1"
 }
## Specifies the S3 Bucket, region and DynamoDB table used for the durable backend and state locking
## Key file use for save the state file int the S3 buckets

terraform {
    backend "s3" {
      encrypt = true
      bucket = "terraform-s3-cicd"
      #dynamodb_table = "SE-terraform-state-lock-dynamo"
      key = "state-files/EC2/terraform.tfstate"
      region = "us-east-1"
  }
    required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "~> 4.66.1"
      }
    }
}