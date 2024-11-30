#datta-jenkins-terraform

terraform {
  backend "s3" {
    bucket = "datta-jenkins-terraform"
    key = "terraform.tfstate"
    region = "ap-south-1"
    }
}