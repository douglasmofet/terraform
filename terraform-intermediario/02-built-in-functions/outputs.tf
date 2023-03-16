output "instance_public_ips" {
  //mostra todos os valores gerados, vai gerar uma listerraform destroyta
  value = aws_instance.server.*.public_ip
}

output "instace_names" {
  //pega a lista e transforma numa string
  value = join(", ", aws_instance.server.*.tags.Name)
}