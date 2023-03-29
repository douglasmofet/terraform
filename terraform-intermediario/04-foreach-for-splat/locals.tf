locals {
  files = ["site.json", "report.xml", "file2.pdf"]
  //utilizar colchetes para retornar uma lista
  file_extensions       = [for item in local.files : regex("\\.[0.9a-z]+$", item)]
  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  ips = [
    {
      public : "122.122.122.22",
      private : "122.122.122.23",
    },
    {
      public : "123.123.123.23",
      private : "123.123.123.24",
    },
  ]
}