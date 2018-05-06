resource "aws_vpc" "vpcuat" {
  cidr_block           = "${var.scblf_vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_aznone}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_vpc_name}"
    Zone        = "${var.tag_zonenone}"
    Module      = "${var.tag_modulenone}"
  }
}

output "scblf_vpc_id" {
  value = "${aws_vpc.vpcuat.id}"
}

output "scblf_vpc_cidr" {
  value = "${aws_vpc.vpcuat.cidr_block}"
}
