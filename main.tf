terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = "aluraIAC"
  user_data = <<-EOF
    #!/bin/bash
    cd home/ubuntu
    echo "<h1>FeitoTerraform</h1>" > index.txt
    nohup busybox httpd -f -p 8080 &
 	      EOF
  user_data_replace_on_change = true
  tags = {
    Name = "Terraform1"
  }
}
