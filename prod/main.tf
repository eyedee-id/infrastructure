provider "aws" {
  region = "ap-southeast-1"
}

module "files" {
  source = "../modules/files"
}