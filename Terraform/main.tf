# Modules are created for reuse
# for reuse just call the module by source (provide path of the module)

module "Ec2_Instance" {
  source = "./Modules/Ec2_instance"  #Here module is present in same folder , If you want to fetch from outside like github provide the path
  ami_value = "ami-0cd59ecaf368e5ccf"
  instance_type_value = "t2.micro"
  Instance_name = "Module_test_instance"
}