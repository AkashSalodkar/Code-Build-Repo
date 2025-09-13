provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "tomcat_server" {
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"
  security_groups = ["demo-database-rds"]  # Reference the existing security group
  key_name      = "mujahed"
}


output  "tomcat_server_ip" {
  value = aws_instance.tomcat_server.public_ip
}

