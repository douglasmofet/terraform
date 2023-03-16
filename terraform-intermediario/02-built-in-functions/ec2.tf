resource "aws_instance" "server" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.instance_ami
  //procura o tipo da instancia
  instance_type = lookup(var.instance_type, var.env)

  //mergea uma ou mais variáveis do tipo map (objeto)
  tags = merge(
    //local
    local.common_tags,
    {
      Project = "AWS funções"
      //formata e substitui pelo valor do parâmetro
      Env  = format("%s", var.env)
      Name = format("Instance %d", count.index + 1)
    }
  )
}