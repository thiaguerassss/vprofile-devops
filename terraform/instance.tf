resource "aws_instance" "vpro01" {
  ami             = var.instance_ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.vpro_sg.name]
  key_name        = aws_key_pair.vpro-kp.key_name

  volume_tags = {
    Name    = var.instance_name
    Project = var.project
  }

  tags = {
    Name    = var.instance_name
    Project = var.project
  }
}

resource "aws_key_pair" "vpro-kp" {
  key_name   = var.key_pair_name
  public_key = var.key_pair_public_key
}