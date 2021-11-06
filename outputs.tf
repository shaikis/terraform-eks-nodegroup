output "node_group" {
  description = "Outputs from EKS node group. See `aws_eks_node_group` Terraform documentation for values"
  value       = aws_eks_node_group.main
}