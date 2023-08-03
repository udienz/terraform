resource "null_resource" "staging-udienz.id-mail" {
  name = "mail.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
