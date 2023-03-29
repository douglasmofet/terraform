output "extension" {
  value = local.file_extensions
}

//k para key e v para value
//nossa lista de instancias definidas no foreach no ec2.tf
output "instance_arns" {
  value = [for k, v in aws_instance.this : v.arn]
}

output "instance_names" {
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

output "instance_extesions_filter" {
  value = local.file_extensions_upper
}

output "private_ips" {
  value = [for o in local.ips : o.private]
}

output "public_ips" {
  value = local.ips[*].public
}