provider "aws" {
    region = "us-east-2" 
	Access_key_ID	= "AKIAYYKNWCZJGOD45BDR"	
	Secret_access_key = "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"
}

resource "aws_s3_bucket" "first_bucket" {
    bucket = "ranganath-s3-bucket"
}

resource "aws_instance" "first1_instance" {  
    ami= "ami-06d4b7182ac3480fa"  #free tier Amazon Linux 2 AMI for us-east-2
    instance_type = "t2.micro"  # Free tier eligible instance type  
    tags = {    
        Name = "rangnath-ec2-instance"  
        }
    }