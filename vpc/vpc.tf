#
# VPC module will set up VPC and its DHCP options
#
resource "aws_vpc" "myVPC" {
	provider =  aws.secondary
	cidr_block = var.myVPCCIDRBlock

}
