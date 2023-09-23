
provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "example" {
    ami  =""
    instance_type="t2.micro"

    tags = {
        Name = "Windows-Instance"
    }
}

output "public_ip" {
    value = aws_instance.example.public
}