
data "template_file" "json" {
  template = file("template.json")

  vars = {
    age  = 33
    eyes = "Green"
    name = "Douglas"
    nick = "Mofet"
  }
}

data "archive_file" "json" {
  type = local.file_ext
  //{local onde esta sendo executado o comando} / {cria pasta files} / {nome objeto no locals} / {extensão de saída o novo tipo do arquivo}
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = local.object_name
  }
}