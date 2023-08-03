resource "null_resource" "qa-udienz.id-mail" {
  name = "mail.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
