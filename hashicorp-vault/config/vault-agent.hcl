vault {
  address = "http://vault-server:8200"
}

exit_after_auth = false
pid_file = "/tmp/vault-agent-pid"

auto_auth {
  method "approle" {
    mount_path = "auth/approle"
    config = {
      role_id_file_path     = "/etc/vault/role_id"
      secret_id_file_path   = "/etc/vault/secret_id"
      remove_secret_id_file = false
    }
  }

  sink "file" {
    config = {
      path = "/vault/token/.vault-token"
    }
  }
}