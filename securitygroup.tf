resource "aws_security_group" "group1" {
  name        = var.grp
  description = "security group one"
  vpc_id     = var.vpcid
  #vpc_id      = aws_vpc.main.id
  tags = {
    Name = "SGroup1"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshport" {
  security_group_id = aws_security_group.group1.id
  cidr_ipv4 = var.ipv4
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}