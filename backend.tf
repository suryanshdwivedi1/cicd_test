terraform {
  backend "s3" {
    bucket       = "first-demo-bucket-s3-surya"
    region       = "ap-south-1"
    use_lockfile = true
  }
}