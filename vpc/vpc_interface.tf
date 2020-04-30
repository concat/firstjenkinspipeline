# VPC Modules Variables and Outputs

# variable "myGlobalTags" {
# 	type = "map"
# }
# variable "myApplicationTags" {
# 	type = "map"
# }
# variable "myEnvironmentTags" {
# 	type = "map"
# }
variable "myVPCName" {}
variable "myVPCCIDRBlock" {}
# variable "myIGWName" {}
# variable "myDNSServers" { type = "list" }
# variable "myDomainName" {}

# Outputs (values from module)
output "vpc_id" { 
  value = aws_vpc.myVPC.id
  description = "The VPC Id of the created VPC"
}

