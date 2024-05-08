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
  #ami           = "ami-04b70fa74e45c3917"  
  ami           = "ami-0e001c9271cf7f3b9"
  instance_type = "t2.micro"
  key_name = "aluraIAC"
  # user_data = <<-EOF
    #!/bin/bash
    # cd home/ubuntu
    # echo "<h1>FeitoTerraform</h1>" > index.html
    #nohup busybox httpd -f -p 8080 &
    #   EOF
  #user_data_replace_on_change = true
  tags = {
    Name = "TerraformAnsiblePython"
  }
}
