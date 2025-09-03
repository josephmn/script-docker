storage "file" {
  path = "/vault/file"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1  # Solo para desarrollo (en producción usa TLS)
}

disable_mlock = true  # Necesario para entornos con limitaciones de memoria