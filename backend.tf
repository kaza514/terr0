terraform {
  backend "s3" {
    bucket = "khaja-ctc"
    key    = "Dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
