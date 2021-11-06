variable "desired_size" {
    type = number
}
variable "max_size" {
    type = number
}
variable "min_size" {
    type = number
}
variable "ami_release_version" {
    default = null
}
variable "kubernetes_version" {
    default = null
}
variable "force_update_version" {
    description = "Force version update if existing pods are unable to be drained due to a pod disruption budget issue."
    type = bool
    default = false
}
variable "labels" {
    type = map(string)
}
variable "capacity_type" {
    type = string
    default = "ON_DEMAND"
}
variable "instance_types" {
    type = list(string)
    default = null
    }
variable "disk_size" {
    type = number
    default = 20
}
variable "ami_type" {
    type = string
}
variable "subnet_ids" {
    type = list(string)
}
variable "node_role_arn" {
    type = string
    default =  null
}
variable "node_group_name" {
    type = string
    default = null
}
variable "node_group_name_prefix" {
    type = string
    default = null
}
variable "cluster_name" {}
variable "ec2_ssh_key" {
    type = string
    default = ""
}
variable "source_security_group_ids" {
    type = list(string)
    default = []
}
variable "create_iam_role" {
    type = bool
    default = true
}
variable "node_group_role_name"{
    default = ""
    type    = string
}
variable "taints" {
    type        = list(object({ key = string, value = any, effect = string }))
    default = []
  
}

variable "launch_template" {
    type = map(string)
    default = {}  
}

variable "tags" {
    type = map(string)
    default = {}
  
}