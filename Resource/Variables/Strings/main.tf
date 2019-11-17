variable "sample" {
  default = "hello-devops"  // Value should be give in double quotes as it is a string
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}
