module "root_create_s3_backend" {
    source = "./modules/s3_backend_2"
    aws_s3_bucket_name = var.root_aws_s3_bucket_name
    sse_algorithm = var.root_sse_algorithm
  
}

module "root_create_dynamodb" {
    source = "./modules/dynamo_db"
    dynamodb_name = var.root_dynamodb_name
    hash_key = var.root_aws_s3_bucket_name
  
}

module "ec2_create" {
    source = "./modules/ec2_create" 
    instance_type = var.root_instance_type
    key_name = var.root_key_name
    key_path = "./keys/ec2.pem"
    sg_name = var.root_sg_name
}