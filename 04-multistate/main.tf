terraform {
  backend "s3" {
    bucket = "ashri-tf-state"
    key    = "test/${var.env}/state"
    region = "us-east-1"
  }
}

output "env" {
  value = "var.env"
}

variable "env" {}