resource "null_resource" "production-udienz_id-" {
  name = "ftp.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}