resource "lxd_network" "lxdbr1" {
  config = {
    "ipv4.address" = "100.64.100.1/24"
    "ipv4.nat"     = "true"
  }
  name = "lxdbr1"
  type = "bridge"
}

resource "lxd_profile" "lxd_profile_1" {
  config = {
    "environment.TZ"   = "Asia/Jakarta"
    "user.user-data"   = <<-EOT
            #cloud-config
            packages:
             - openssh-server
            timezone: Asia/Jakarta
            locale: en_US.UTF-8
            bootcmd:
             - dhclient eth0
            users:
             - name: mahyuddin
               ssh_authorized_keys:
                - ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJS2wQrZS5WIpeS70ByfxXb4Y4tz2X0sgvYpUue74Zr8IckTklrwLIr7tYnkOrlVHeVN2UWM9khUGYaDjz3loIs= udienz@starscream
                - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAqdjCzQ5JXhKe7gl1w8MFO66Q9M47s8AW67wMIqcrXiyMVdhC/DA6+OL2Op8bB+jlxGSrx1ah3SpYHULooOqMJxlCWkjLJhVF7blNsvtZeTWLWtod3XW6KUzgZesKIl52jPylWWWRg4JOxZljVP1eSIMKiXhmx6PBQi0igeKd5cS+QmI9M3WSn/LPWq5HLTo+2JBKdKFKWmPc/2M4Ui55vF89hqpMHEaYepMzeDAlopd4xwuh8LMsQQHDDiw2f3NQ+T1A5G0jhQDtn7hWGdb/k/5MW1mTtAq0NbHd+Sfvfl2+aDR02BUtAwP4qZVHt4HZIC+J7836POniPIuNILItPQ== mahyuddin-rsa
               sudo: ALL=(ALL) NOPASSWD:ALL
               shell: /bin/bash
             - name: root
               ssh_authorized_keys:
                - ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJS2wQrZS5WIpeS70ByfxXb4Y4tz2X0sgvYpUue74Zr8IckTklrwLIr7tYnkOrlVHeVN2UWM9khUGYaDjz3loIs= udienz@starscream
                - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAqdjCzQ5JXhKe7gl1w8MFO66Q9M47s8AW67wMIqcrXiyMVdhC/DA6+OL2Op8bB+jlxGSrx1ah3SpYHULooOqMJxlCWkjLJhVF7blNsvtZeTWLWtod3XW6KUzgZesKIl52jPylWWWRg4JOxZljVP1eSIMKiXhmx6PBQi0igeKd5cS+QmI9M3WSn/LPWq5HLTo+2JBKdKFKWmPc/2M4Ui55vF89hqpMHEaYepMzeDAlopd4xwuh8LMsQQHDDiw2f3NQ+T1A5G0jhQDtn7hWGdb/k/5MW1mTtAq0NbHd+Sfvfl2+aDR02BUtAwP4qZVHt4HZIC+J7836POniPIuNILItPQ== mahyuddin-rsa
               shell: /bin/bash
        EOT
    "user.vendor-data" = <<-EOT
            #cloud-config
            apt_mirror: http://kartolo.sby.datautama.net.id/ubuntu
        EOT
  }

  description = "Default LXD profile"
  name        = "lxd_profile_1"
  device {
    name = "eth0"
    properties = {
      "name"    = "eth0"
      "network" = "lxdbr0"
    }
    type = "nic"
  }
  device {
    name = "root"
    properties = {
      "path" = "/"
      "pool" = "default"
    }
    type = "disk"
  }
}
