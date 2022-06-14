resource "dns_cname_record" "www" {
    zone = "mahyuddin.xyz."
    name = "www"
    cname = "mahyuddin.xyz."

    ttl = 300
}

resource "dns_a_record_set" "root_domain" {
    zone = "mahyuddin.xyz."

    addresses = [
        "127.0.0.1",
    ]

    ttl = 300
}

resource "dns_ns_record_set" "root_ns" {
    zone = "mahyuddin.xyz."
    name = "mahyuddin.xyz"
    nameservers = [
        "dns1.mahyuddin.xyz.",
        "dns2.mahyuddin.xyz.",
    ]
}

resource "dns_a_record_set" "dns1" {
    name = "dns1"
    zone = "mahyuddin.xyz."
    ttl = 300
    addresses = [
        "100.64.10.131",
    ]
}
resource "dns_a_record_set" "dns2" {
    name = "dns2"
    zone = "mahyuddin.xyz."
    ttl = 300
    addresses = [
        "100.64.10.129",
    ]
}
