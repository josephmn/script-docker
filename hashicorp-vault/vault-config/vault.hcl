storage "postgresql" {
  connection_url = "postgresql://postgres:Sgr9cl4v3s@db_postgres:5432/vault"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true
api_addr = "http://0.0.0.0:8200"