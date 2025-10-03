resource "aws_security_group" "private_sg" {
  name        = "private-subnet-sg"
  description = "Allow inbound only from VPC and company network"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "-1"
    cidr_blocks = [
      "10.0.0.0/16",      # Your VPC CIDR
      "192.168.1.0/24"    # Your company network CIDR
    ]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow outbound anywhere (via NAT Gateway)
  }
}
