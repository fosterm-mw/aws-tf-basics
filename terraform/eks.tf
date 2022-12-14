# 
# module "eks" {
#   count = var.use_eks ? 1 : 0
# 
#   source = "terraform-aws-modules/eks/aws"
# 
#   cluster_name = var.cluster_name
#   cluster_version = var.cluster_version
# 
#   vpc_id = local.vpc_id
#   subnet_ids = [ 
#     aws_subnet.private-subnet.id,
#     aws_subnet.private-failover-subnet.id,
#   ]
# 
#   eks_managed_node_group_defaults = {
#     ami_type = "AL2_x86_64"
#     attach_cluster_primary_security_group = true
# 
#     create_security_group = false
#   }
#   
#   eks_managed_node_groups = {
#     one = {
#       name = "node-group-one"
#       
#       instance_types = ["t3.small"]
# 
#       min_size = 1
#       max_size = 3
#       desired_size = 2
#       
#       pre_bootstrap_user_data = <<-EOT
#       echo 'foo bar'
#       EOT
# 
#       vpc_security_group_ids = [
#         aws_security_group.node_group_one.id
#       ]
#     }
# 
#     two = {
#       name = "node-group-two"
#       
#       instance_types = ["t3.medium"]
# 
#       min_size = 1
#       max_size = 2
#       desired_size = 1
#       
#       pre_bootstrap_user_data = <<-EOT
#       echo 'foo bar'
#       EOT
# 
#       vpc_security_group_ids = [
#         aws_security_group.node_group_two.id
#       ]
#     }
#   }
# }
