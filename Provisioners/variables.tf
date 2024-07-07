variable "pro_instance_type" {
    type = string
}

variable "pro_key_name" {
    type = string
    default = ""
  
}

variable "pro_key_path" {
    type = string
    default = ""
  
}

variable "pro_sg_name" {
  type = string
  default = ""
}

variable "pro_user_name" {
    type = string
    default = ""
}

variable "pro_ec2_public_ip" {
    type = string
    default = ""
}

variable "pro_ec2_pem_path" {
    type = string
    default = ""
}