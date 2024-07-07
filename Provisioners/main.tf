module "ec2_create" {
    source = "github.com/jaintpharsha/terraform_remote_modules.git//create_ec2" 
    instance_type = var.pro_instance_type
    key_name = var.pro_key_name
    key_path = "./keys/ec2.pem"
    sg_name = var.pro_sg_name_sg_name
}

# provider "github" {
#     token = var.github_token # or we can use env variable to export token
  
# }

module "remote_exec" {
    source = "github.com/jaintpharsha/terraform_remote_modules.git//remote-exec"
    user_name = var.pro_user_name
    ec2_public_ip = module.ec2_create.ec2_public_ip
    ec2_pem_path = var.pro_ec2_pem_path
}

module "file" {
    source = "github.com/jaintpharsha/terraform_remote_modules.git//file"
    source_path = "./configs/configs.conf"
    destination_path = "/home/ubuntu/configs.conf"
    user_name = var.pro_user_name
    ec2_public_ip = module.ec2_create.ec2_public_ip
    ec2_pem_path = var.pro_ec2_pem_path
  
}

module "local_exec" {
    source = "github.com/jaintpharsha/terraform_remote_modules.git//local-exec"
    command_local = "touch ./configs/local_exec.txt"
}