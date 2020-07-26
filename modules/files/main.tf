module "s3_bucket" {
  source     = "terraform-aws-modules/s3-bucket/aws"
  bucket     = "files.eyedee.id"
  acl        = "public-read"
  versioning = {
    enabled = false
  }
}