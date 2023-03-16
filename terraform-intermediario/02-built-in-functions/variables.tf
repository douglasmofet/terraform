variable "env" {}

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

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-005f9685cb30f234b"

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami value must be valid AMI ID."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = "Definição para números de instancia em cada ambiente"

  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })

  description = "Definição para números de instancia em cada ambiente"

  default = {
    dev  = "t1.micro"
    prod = "t2.micro"
  }

}