resource "aws_security_group" "TF_SG" {
  name        = var.sg_name
  description = var.sg_name
  vpc_id      = data.aws_vpc.default.id


  ingress {
    description = var.ssh_desc
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol_tcp
    cidr_blocks = var.cidr_block
  }

  ingress {
    description = var.http_desc
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.protocol_tcp
    cidr_blocks = var.cidr_block
  }

  egress {
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = var.protocol_outbound
    cidr_blocks = var.cidr_block
  }

  tags = {
    Name = var.sg_tag
  }
}