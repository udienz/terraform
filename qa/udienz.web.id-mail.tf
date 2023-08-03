resource "null_resource" "qa-udienz.web.id-mail" {
  name = "mail.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
