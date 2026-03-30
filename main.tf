resource "aws_instance" "apache_inst" {
  ami                         = "ami-0c3389a4fa5bddaad"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.centos_key.key_name
  vpc_security_group_ids      = [aws_security_group.TF_SG.id]
  associate_public_ip_address = true

  user_data = file("user-data-script.sh")

  tags = {
    Name = "CentOS_Server"
  }
}


resource "aws_key_pair" "centos_key" {
  key_name   = "centos-key-pair-2"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMY3n5jutcZOccHJXuTPGWJOhin96D4Kqg2WearVtz09 sabah@S"
}

resource "aws_security_group" "TF_SG" {
  name        = var.sg_name
  description = var.sg_name
  vpc_id      = data.aws_vpc.default.id


  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_tag
  }
}

data "aws_vpc" "default" {
  default = true
}

#Figure out access keys and see if you can SSH after running terraform apply. Possibly use output

output "instance_ip_addr" {
  description = "The public IP address of the instance."
  value       = aws_instance.apache_inst.public_ip
}