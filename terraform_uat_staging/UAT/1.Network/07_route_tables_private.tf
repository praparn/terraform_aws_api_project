# Creating route table private zone
resource "aws_route_table" "scblf_rtbuat_private" {
  vpc_id = "${aws_vpc.vpcuat.id}"

  route {
    cidr_block     = "${var.cidr_block_rtb_private}"
    nat_gateway_id = "${aws_nat_gateway.aws_nat_gateway.id}"
  }

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_rtbuatprivate}"
    Zone        = "${var.tag_zonenone}"
    Module      = "${var.tag_modulenone}"
  }

  depends_on = ["aws_nat_gateway.aws_nat_gateway"]
}

#################################################################################
resource "aws_route_table_association" "scblf_rtbassuat_private" {
  subnet_id      = "${aws_subnet.subnet_privateuat_1a.id}"
  route_table_id = "${aws_route_table.scblf_rtbuat_private.id}"
}

#################################################################################

output "scblf_rtb_private" {
  value = "${aws_route_table.scblf_rtbuat_private.id}"
}
