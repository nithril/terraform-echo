terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "null_resource" "echo" {
  provisioner "local-exec" {
    command = "echo 'Hello from Terraform!'"
  }
}
