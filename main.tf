provider "aws" {
  region = "us-west-1"
  
}
resource "aws_instance" "server1" {
    ami           = "ami-0c55b159cbfafe1f0" # Example AMI ID, replace with a valid one
    instance_type = "t2.micro"
    tags = {
        Name = "Server1-${count.index + 1}"
    }
    count = 2
}