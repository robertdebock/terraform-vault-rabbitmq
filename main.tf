resource "vault_rabbitmq_secret_backend" "rabbitmq" {
  connection_uri  = var.connection_uri
  username        = var.username
  password        = var.password
}
