terraform {
  backend "s3" {
    bucket = "jenkins-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
