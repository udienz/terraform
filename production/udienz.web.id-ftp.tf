resource "null_resource" "production-udienz.web.id-ftp" {
  name = "ftp.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
