resource "vault_rabbitmq_secret_backend" "default" {
  connection_uri  = var.connection_uri
  username        = var.username
  password        = var.password
}

resource "vault_rabbitmq_secret_backend_role" "role" {
  backend = vault_rabbitmq_secret_backend.default.path
  name    = "deploy"

  tags = "tag1,tag2"

  vhost {
    host = "/"
    configure = ""
    read = ".*"
    write = ""
  }

  vhost_topic {
    vhost {
      topic = "amq.topic"
      read = ".*"
      write = ""
    }

    host = "/"
  }
}
