terraform {
  backend "s3" {
    bucket = "tf-state-gatsheniops-portfolio"
    key    = "master/terraform.tfstate"
    region = "eu-west-1"
  }
}