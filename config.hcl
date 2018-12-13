ui = true

storage "file" {
        path = "/home/dl_vault/vault/data"
}

listener "tcp" {
        address = "127.0.0.1:32765"
        proxy_protocol_behavior = "use_always"
        tls_disable = 1
        #tls_cert_file = "/etc/cloudera/active/vault.pem"
        #tls_key_file = "/etc/cloudera/active/vault.key"

}

disable_clustering = true
disable_mlock = true
#plugin_directory = "/home/dl_vault/vault_plugins"
api_addr = "http://127.0.0.1:32765/vault/v1/"
