resource "aws_instance" "AWSVM_server1" {
	ami = var.ami
	instance_type = var.instance_type
		tags = {
		Name = "EC2TerraVM-1"
	}
}

resource "aws_instance" "AWSVM_server2" {
	ami = var.ami
	instance_type = var.instance_type
		tags = {
		Name = "EC2TerraVM-2"
	}
}