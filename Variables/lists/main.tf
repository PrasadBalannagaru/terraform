variable "sample" {
  type    = "list"
  default = ["prasad", "bhagya", "papa"]
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample[0]}"
  }
}
