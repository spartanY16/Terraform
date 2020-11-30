provider "aws" {
	region = var.region
	profile = "default"
}

resource "aws_instance" "example"{
	ami = "ami-09558250a3419e7d0"
	instance_type = "t2.micro"
}