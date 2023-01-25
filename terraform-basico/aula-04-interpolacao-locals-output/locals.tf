locals {
  ip_filepath = "ips.json"

  common_tags = {
    Name        = "My bucket 04"
    Environment = "Dev"
    criacao     = "terraform-aula-04",
    author      = "mofet"
  }
}
