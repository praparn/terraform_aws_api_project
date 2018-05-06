##############################
#         static value      #
##############################

//variable "access_key" {}
//variable "secret_key" {}
variable "region" {}

variable "az1" {}
variable "az2" {}
variable "az3" {}
variable "scblf_vpc_name" {}
variable "scblf_vpc_env" {}
variable "scblf_vpc_cidr" {}
variable "scblf_route53_name" {}
variable "subnet_publicuat_1a_cidr" {}

variable "subnet_publicuat_1b_cidr" {}

variable "subnet_publicuat_1c_cidr" {}
variable "subnet_privateuat_1a_cidr" {}
variable "subnet_privateuat_1b_cidr" {}
variable "subnet_privateuat_1c_cidr" {}
variable "cidr_block_rtb_private" {}
variable "cidr_block_rtb_public" {}

//TAG variable section//
variable "tag_environment" {}

variable "tag_region" {}
variable "tag_aznone" {}
variable "tag_az1" {}
variable "tag_az2" {}
variable "tag_az3" {}
variable "tag_category" {}
variable "tag_modulenone" {}
variable "tag_zonenone" {}
variable "tag_zonepublic" {}
variable "tag_zoneprivate" {}
variable "tag_vpc_name" {}
variable "tag_route53_name" {}
variable "tag_internetgateway_name" {}
variable "tag_subnet_publicuat_1a" {}
variable "tag_subnet_privateuat_1a" {}
variable "tag_eipnatuat_1a_name" {}
variable "tag_eipnatuat_1b_name" {}
variable "tag_eipnatuat_1c_name" {}
variable "tag_netinterfaceuat1_1a_name" {}
variable "tag_netinterfaceuat2_1a_name" {}
variable "tag_netinterfaceuat3_1a_name" {}
variable "tag_eipinterfaceuat1_1a_name" {}
variable "tag_eipinterfaceuat2_1a_name" {}
variable "tag_eipinterfaceuat3_1a_name" {}
variable "tag_natgwuat_1a" {}
variable "tag_natgwuat_1b" {}
variable "tag_natgwuat_1c" {}
variable "tag_rtbuatprivate" {}
variable "tag_rtbuatpublic" {}
