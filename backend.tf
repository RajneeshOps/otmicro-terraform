terraform {
  backend "s3" {
    bucket = "ot-micro-services-p9"
    key    = "terraformp9/terraform.tfstate"
    region = "ap-south-1"
  }
}
