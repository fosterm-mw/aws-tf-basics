
locals {
  # vpc_id = aws_vpc.network.id

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

  garbage = {
    for k, v in local.k8s_auth_roles : (k) => {
      sa_acct = k.default_app.service_accounts
    }
  }

}


