resource "aws_instance" "web" {
  ami                         = "ami-0194306c4eb69fbc1"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.public_http_traffic.id]
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public.id
  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp3"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "public_http_traffic" {
  description = "Segurity group allowing traffic on ports 433 and 80"
  name        = "public_http_traffic"
  vpc_id      = aws_vpc.this.id
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.public_http_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.public_http_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 433
  to_port           = 433
  ip_protocol       = "tcp"
}