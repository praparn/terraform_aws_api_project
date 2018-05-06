resource "aws_nat_gateway" "aws_nat_gateway" {
  allocation_id = "${aws_eip.scblf_eipnatuat_1a.id}"
  subnet_id     = "${aws_subnet.subnet_privateuat_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_natgwuat_1a}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

output "scblf_natgwuat_1a" {
  value = "${aws_nat_gateway.aws_nat_gateway.id}"
}
