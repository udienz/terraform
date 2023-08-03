resource "null_resource" "qa-udienz.my.id-ftp" {
  name = "ftp.udienz.my.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
