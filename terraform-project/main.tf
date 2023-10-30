provider "aws" {
  region = "us-east-1"
}

# Define a local variable for the VMs number
variable "num_windows_instances" {
  type    = number
  default = 1
}

variable "num_ubuntu_instances" {
  type    = number
  default = 1
}

# Create the instance groups for Windows and Ubuntu
resource "aws_instance" "windows_example" {
  ami           = "ami-0ff7f29dc49423a92"
  instance_type = "t2.micro"
  count         = var.num_windows_instances
  key_name      = "packer key"
}

resource "aws_instance" "ubuntu_example" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  count         = var.num_ubuntu_instances
  key_name      = "packer key"
}
