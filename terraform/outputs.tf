
output "test" {
  value = local.sa_acct
}

output "test_whole" {
  value = local.sa_acct.default_app
}

