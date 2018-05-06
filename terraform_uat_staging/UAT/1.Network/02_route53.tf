resource "aws_route53_zone" "route53uat" {
  name       = "${var.scblf_route53_name}"
  vpc_id     = "${aws_vpc.vpcuat.id}"
  vpc_region = "${var.region}"
  depends_on = ["aws_vpc.vpcuat"]

  tags {
    Environment = "${var.tag_environment}"
    Region      = "${var.tag_region}"
    AZ          = "${var.tag_aznone}"
    Category    = "${var.tag_category}"
    Name        = "${var.tag_route53_name}"
    Zone        = "${var.tag_zonenone}"
    Module      = "${var.tag_modulenone}"
  }
}

output "scblf_route53_zoneid" {
  value = "${aws_route53_zone.route53uat.zone_id}"
}

/* Example
resource "aws_route53_record" "www" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "www.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "300"
  records = ["10.0.0.1"]
}*/

