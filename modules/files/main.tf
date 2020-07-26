module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "files.eyedee.id"
  region = var.region
  acl    = "public-read"

  website = {
    index_document = "index.html"
  }

  policy = file("${path.module}/policy.json")

  versioning = {
    enabled = false
  }
}