resource "aws_instance" "apache_inst" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.instance_key.key_name
  vpc_security_group_ids = [aws_security_group.TF_SG.id]

  user_data = file(var.user_data_file)

  tags = {
    Name = var.instance_name
  }
}