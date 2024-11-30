#Argument ka value datatype declare karte hai

variable "region" {
  type = string
 }

variable "ami" {
  type = string
  default= "ami-03753afda9b8ba740"
}

variable "instance_type" {
  type = string
  default="t2.small"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
}
