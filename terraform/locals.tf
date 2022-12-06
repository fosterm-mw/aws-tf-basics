
locals {
  vpc_id = aws_vpc.network.id

  k8s_auth_roles = {
    default_app = {
      service_accounts = [
        "default"
      ],
      role_id = "k9s-vault-agent",
      policies = [
        "read-k8s-secrets"
      ]
    }
  }

  sa_acct = k8s_auth_roles.default_app.service_accounts

}


