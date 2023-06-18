provider "aws" {
    region="ap-south-1"
    shared_credentials_file="C:\\Users\\harsh\\.aws\\credentials"
    profile="default"
}

variable "s3_bucket_names" {
  type = list
  default = ["fusion1238827","fusion110928","fusion1837391","fusion11928","fusion81000","fusion101282309"]
}

resource "aws_s3_bucket" "mybucket"{

  count         = length(var.s3_bucket_names)
  bucket        = var.s3_bucket_names[count.index]
  acl           = "private"

}