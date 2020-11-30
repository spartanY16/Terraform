resource "aws_iam_user" "userx"{
	name = "userx"
	path = "/system/"
	tags = {
		source = "terraform"
	}
}

resource "aws_iam_access_key" "userx"{
	user = aws_iam_user.userx.name
} 

resource "aws_iam_user_policy" "userx_policy"{
	name = "userx_policy"
	user = aws_iam_user.userx.name
	
	policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Action": [
				"ec2, s3, dynamoDB:*"
			],
			"Effect": "Allow",
			"Resource": "*"
		
		}
	
	]
	
}

	EOF
}