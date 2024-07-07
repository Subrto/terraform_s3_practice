terraform {
  backend "s3" {
    bucket = "s3-backend-practice"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dynamo_backend_locking"
  }
}
