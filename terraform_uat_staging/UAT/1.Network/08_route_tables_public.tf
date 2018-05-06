# Creating route table private zone
resource "aws_route_table" "scblf_rtbuat_public" {
  vpc_id = "${aws_vpc.vpcuat.id}"

  route {
    cidr_block = "${var.cidr_block_rtb_public}"
    gateway_id = "${aws_internet_gateway.igwuat.id}"
  }

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_rtbuatpublic}"
    Zone        = "${var.tag_zonenone}"
    Module      = "${var.tag_modulenone}"
  }

  depends_on = ["aws_internet_gateway.igwuat"]
}

#################################################################################
resource "aws_route_table_association" "scblf_rtbassuat_public" {
  subnet_id      = "${aws_subnet.subnet_publicuat_1a.id}"
  route_table_id = "${aws_route_table.scblf_rtbuat_public.id}"
}

#################################################################################

output "scblf_rtb_public" {
  value = "${aws_route_table.scblf_rtbuat_public.id}"
}
