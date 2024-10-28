data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Jenkins_ami"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
  key_name = "amzkey"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
