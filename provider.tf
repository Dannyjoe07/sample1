terraform {
  backend "s3" {
    bucket = "tfstatebucket2023sample1"
    dynamodb_table = "state-lock"
    key = "AWS/sample1/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}