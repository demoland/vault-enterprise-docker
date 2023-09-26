ui            = true
cluster_addr  = "https://127.0.0.1:8201"
api_addr      = "https://127.0.0.1:8200"
disable_mlock = true

storage "raft" {
  path    = "/vault/data"
  node_id = "vault-0"
}

listener "tcp" {
  address       = "127.0.0.1:8200"
#  tls_cert_file = "/vault/pki/full-chain.pem"
#  tls_key_file  = "/vault/pki/private-key.pem"
}

telemetry {
  prometheus_retention_time = "30s",
  disable_hostname          = true
}

disable_mlock = true
