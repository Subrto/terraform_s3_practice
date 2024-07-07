variable "root_aws_s3_bucket_name" {
  type = string
}

variable "root_sse_algorithm" {
    type = string
}
variable "root_dynamodb_name" {
    type = string
}

variable "root_hash_key" {
    type = string
}

variable "root_instance_type" {
    type = string
}

variable "root_key_name" {
    type = string
    default = ""
  
}

variable "root_key_path" {
    type = string
    default = ""
  
}

variable "root_sg_name" {
  type = string
  default = ""
}