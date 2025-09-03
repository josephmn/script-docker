# global-policy.hcl
path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Permite al token consultar sus propios metadatos
path "auth/token/lookup-self" {
  capabilities = ["read"]
}

# Permite al token renovarse a sí mismo
path "auth/token/renew-self" {
  capabilities = ["update"]
}

# (Opcional) Permite revocarse a sí mismo si lo necesitas
path "auth/token/revoke-self" {
  capabilities = ["update"]
}