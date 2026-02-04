provider "aws" {
  region  = "ap-south-1"
  profile = "configs"

}
resource "aws_instance" "web-server" {
  ami                    = "ami-0ced6a024bb18ff2e"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0c78535db3865697a", aws_security_group.sg-webserver.id]
}
resource "aws_security_group" "sg-webserver" {
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}