terraform {
  backend "s3" {
    bucket = "tf-state-gatsheniops-portfolio"
    key    = "main/terraform.tfstate"
    region = "eu-west-1"
  }
}