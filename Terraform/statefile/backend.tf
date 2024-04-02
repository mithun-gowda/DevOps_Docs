terraform {
  backend "s3" {
    bucket         = "Backend_Tf_state_file" 
    key            = "Myfolder/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}