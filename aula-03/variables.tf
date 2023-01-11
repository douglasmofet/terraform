variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "aws_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu-mofet"
    Project = "Curso com AWS e Terraform"
  }
}

