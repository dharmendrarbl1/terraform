resource "aws_security_group" "allow_tls" {
  name        = "FirstSG"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-e367d599"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "jenkins"
  }
}
