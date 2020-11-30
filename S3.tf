resource "aws_s3_bucket" "bucket"{
	bucket = "bucketspartan1992"
	acl = "private"
	tags = {
		Name = "My bucket"
	}
}