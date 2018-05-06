//Eleastic IP Address of NAT Gateway (1 EIP per NAT GW/AZ)
resource "aws_eip" "scblf_eipnatuat_1a" {
  vpc = true

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipnatuat_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_eip" "scblf_eipnatuat_1b" {
  vpc = true

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az2}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipnatuat_1b_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_eip" "scblf_eipnatuat_1c" {
  vpc = true

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az3}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipnatuat_1c_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

//Provision Network Interface for Public Zone
resource "aws_network_interface" "scblf_netinterfaceuat1_1a" {
  subnet_id = "${aws_subnet.subnet_publicuat_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_netinterfaceuat1_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_network_interface" "scblf_netinterfaceuat2_1a" {
  subnet_id = "${aws_subnet.subnet_publicuat_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_netinterfaceuat2_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_network_interface" "scblf_netinterfaceuat3_1a" {
  subnet_id = "${aws_subnet.subnet_publicuat_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_netinterfaceuat3_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

//Elastic IP for Network Interface
resource "aws_eip" "scblf_eipinterfaceuat1_1a" {
  vpc               = true
  network_interface = "${aws_network_interface.scblf_netinterfaceuat1_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipinterfaceuat1_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_eip" "scblf_eipinterfaceuat2_1a" {
  vpc               = true
  network_interface = "${aws_network_interface.scblf_netinterfaceuat2_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipinterfaceuat2_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

resource "aws_eip" "scblf_eipinterfaceuat3_1a" {
  vpc               = true
  network_interface = "${aws_network_interface.scblf_netinterfaceuat3_1a.id}"

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_az1}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_eipinterfaceuat3_1a_name}"
    Zone        = "${var.tag_zonepublic}"
    Module      = "${var.tag_modulenone}"
  }
}

output "scblf_eipnatuat_1a" {
  value = "${aws_eip.scblf_eipnatuat_1a.public_ip}"
}

output "scblf_eipnatuat_1b" {
  value = "${aws_eip.scblf_eipnatuat_1b.public_ip}"
}

output "scblf_eipnatuat_1c" {
  value = "${aws_eip.scblf_eipnatuat_1c.public_ip}"
}

output "scblf_eipinterfaceuat1_1a" {
  value = "${aws_eip.scblf_eipinterfaceuat1_1a.public_ip}"
}

output "scblf_eipinterfaceuat2_1a" {
  value = "${aws_eip.scblf_eipinterfaceuat2_1a.public_ip}"
}

output "scblf_eipinterfaceuat3_1a" {
  value = "${aws_eip.scblf_eipinterfaceuat3_1a.public_ip}"
}
