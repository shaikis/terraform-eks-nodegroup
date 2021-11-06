# terraform-eks-nodegroup
```
module "eks-node-group" {
  source = "git@github.com:shaikis/terraform-eks-nodegroup.git"
  cluster_name = module.eks_cluster.eks_cluster_endpoint

  node_group_name_prefix = "eks-test-"

  subnet_ids = ["subnet-1","subnet-2","subnet-3"]

  desired_size = 1
  min_size     = 1
  max_size     = 1

  instance_types = ["t3a.large","t3a.large"]
  capacity_type  = "SPOT"

  ec2_ssh_key = "eks-test"

  labels = {
    lifecycle = "OnDemand"
  }

  taints = [
    {
      key    = "test-1"
      value  = null
      effect = "NO_SCHEDULE"
    },
    {
      key    = "test-2"
      value  = "value-test"
      effect = "NO_EXECUTE"
    }
  ]

  force_update_version = true

  tags = {
    Environment = "test"
  }
}
```