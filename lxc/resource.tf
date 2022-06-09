resource "lxd_container" "dns1" {
  profiles         = ["${lxd_profile.lxd_profile_1.name}"]
  image            = "images:centos/7/cloud"
  name             = "dns1"
  start_container  = true
  target           = "none"
  type             = "container"
  wait_for_network = true
}

resource "lxd_container" "dns2" {
  profiles         = ["${lxd_profile.lxd_profile_1.name}"]
  image            = "images:centos/7/cloud"
  name             = "dns2"
  start_container  = true
  target           = "none"
  type             = "container"
  wait_for_network = true
}
