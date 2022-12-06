
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

  sa_acct = {
    for k, v in local.k8s_auth_roles : (k) => [
      for k2, v2 in v: v2["service_accounts"]
    ]
  }

}


