resource "aws_internet_gateway" "igwuat" {
  vpc_id = "${aws_vpc.vpcuat.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_aznone}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_internetgateway_name}"
    Zone        = "${var.tag_zonenone}"
    Module      = "${var.tag_modulenone}"
  }
}

output "scblf_igw_id" {
  value = "${aws_internet_gateway.igwuat.id}"
}
