#
# VPC module will set up VPC and its DHCP options
#
resource "aws_vpc" "myVPC" {
	provider =  aws.secondary
	cidr_block = var.myVPCCIDRBlock

#    tags = "${merge(var.myGlobalTags,var.myApplicationTags,var.myEnvironmentTags)}"
}

# resource "aws_vpc_dhcp_options" "dns_cfg" {
# 	provider =  "aws.primary" 
# 	domain_name_servers = "${var.myDNSServers}"
# 	domain_name = "${var.myDomainName}"
# }

# resource "aws_vpc_dhcp_options_association" "dhcp4vpc" {
# 	provider =  "aws.primary" 
# 	vpc_id = "${aws_vpc.myVPC.id}"
# 	dhcp_options_id = "${aws_vpc_dhcp_options.dns_cfg.id}"
# }