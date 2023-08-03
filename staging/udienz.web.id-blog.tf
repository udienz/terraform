resource "null_resource" "staging-udienz_web_id-blog" {
  name = "blog.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
