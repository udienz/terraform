resource "null_resource" "staging-udienz_my_id-" {
  name = "www.udienz.my.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}