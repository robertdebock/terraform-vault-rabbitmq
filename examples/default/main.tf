module "vault_rabbitmq" {
  source         = "../../"
  username       = "guest"
  password       = "guest"
  connection_uri = "http://rabbitmq:15672"
}
