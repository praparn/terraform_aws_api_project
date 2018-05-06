resource "aws_subnet" "subnet_publicuat_1a" {
  vpc_id            = "${aws_vpc.vpcuat.id}"
  cidr_block        = "${var.subnet_publicuat_1a_cidr}"
  availability_zone = "${var.az1}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_subnet_publicuat_1a}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

####################################################
resource "aws_subnet" "subnet_privateuat_1a" {
  vpc_id            = "${aws_vpc.vpcuat.id}"
  cidr_block        = "${var.subnet_privateuat_1a_cidr}"
  availability_zone = "${var.az1}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_subnet_privateuat_1a}"
    Zone        = "${var.tag_zoneprivate}"
    Module      = "${var.tag_modulenone}"
  }
}

##########################################################

output "scblf_subnet_publicuat_1a" {
  value = "${aws_subnet.subnet_publicuat_1a.id}"
}

output "scblf_subnet_privateuat_1a" {
  value = "${aws_subnet.subnet_privateuat_1a.id}"
}
