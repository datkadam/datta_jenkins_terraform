#Resource ka actual argument ka value specify karana hota hai is file me
instance_type  = "t2.micro"
instance_count = "4"
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["ap-south-1a", "ap-south-1b"]
project_name         = "MyVPCProject"