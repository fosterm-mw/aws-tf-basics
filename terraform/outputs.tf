
output "test" {
  value = local.sa_acct
}

output "test_whole" {
  # for_each = local.k8s_auth_roles
  value = local.sa_acct["default_app"][:]
}

