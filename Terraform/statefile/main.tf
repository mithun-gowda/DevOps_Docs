provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-053b0fg3c279acc90" 
  subnet_id = "subnet-019earf91ed9b52e7" 
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "abhishek-s3-demo-xyz" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}