variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "tfteste01"
}

variable "instance_type" {
  type        = string
  description = "máquina ec2 baixa"
  default     = "t1.micro"
}