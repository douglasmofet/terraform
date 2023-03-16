locals {
  //Obtém a quantidade de instancia
  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "arquivo-gerado-de-um-template"

  common_tags = {
    "Owner" : "Mofet"
    "Desc" : "Valores centrados"
  }
}