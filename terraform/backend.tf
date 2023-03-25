terraform {
  backend "s3" {
    bucket = "demo-runners"
    key    = "demo-runners/dev"
    region = "us-east-1"
  }
}
