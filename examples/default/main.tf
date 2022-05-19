module "vault_rabbitmq" {
  source         = "../../"
  username       = "user"
  password       = "password"
  connection_uri = "http://rabbitmq:5672"
}
