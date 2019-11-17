resource "aws_instance" "web" {
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-023ea020d9bcf4e54", "sg-0361f8250beadd1f5"]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "cd /tmp",
      "git clone https://rkb03:password@gitlab.com/dops42/shell-scripts.git",
      "sh /tmp/shell-scripts/studentapp/install.sh",
    ]
  }
}
