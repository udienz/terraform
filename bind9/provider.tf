provider "dns" {
    update {
        server = "100.64.10.131"
        key_name = "tsig-key."
        key_algorithm = "hmac-sha256"
        key_secret = "Yfr4AfgMgfDS1BUf4dpbua2hSea99spQVnnbvAJfL5g="
    }
}
