
locals {
  # vpc_id = aws_vpc.network.id

  k8s_auth_roles = {
    default_app = {
      service_accounts = [
        "default",
        "devops"
      ],
      role_id = "k9s-vault-agent",
      policies = [
        "read-k8s-secrets"
      ]
    }
    risk_app = {
      service_accounts = [
        "default"
      ],
      role_id = "k9s-vault-agent",
      policies = [
        "read-k8s-secrets"
      ]
    }
  }

  # [default_app: service_accounts, default_app: role_id]
  # [[default_app: "default", "devops"], [risk_app: "default"]]
  # [default_app: "default", default_app: "devops", risk_app: "default"]


  sa_acct = {
    for k, v in local.k8s_auth_roles : [
      for i in v.service_accounts : [
        v.service_accounts[i]
      ]
    ]
  }

}


