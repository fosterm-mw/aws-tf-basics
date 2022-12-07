
output "test" {
  value = local.sa_acct
}

output "test_whole" {
  count = length(local.sa_acct)
  value = local.sa_acct[count.index]
}

