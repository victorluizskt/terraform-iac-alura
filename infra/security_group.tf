resource "aws_security_group" "geral_access" {
  name = var.geral_access
  description = "dev group"
  # permited ports, protocol and ipv4, ipv6
  ingress {
    # with this configuration we can release access to all machines
    #ipv4
    cidr_blocks = [ "0.0.0.0/0" ]
    #ipv6
    ipv6_cidr_blocks = [ "::/0" ]
    # all ports
    from_port = 0
    to_port = 0
    # all protocols
    protocol = "-1"
  }
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks = [ "::/0" ]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags = {
    Name = "geral_access_env"
  }
}