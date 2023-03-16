variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "tf01"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-0b0d54b52c62864d6"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t1.micro"
}