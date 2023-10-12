terraform {
  backend "s3" {
    bucket = "mkbucket-b75"
    key = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}