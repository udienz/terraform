resource "null_resource" "staging-udienz_web_id-ftp" {
  name = "ftp.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
