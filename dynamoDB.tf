resource "aws_dynamodb_table" "dynamotable"{
	name = "user_terraform"
	billing_mode = "PROVISIONED"
	read_capacity = 5
	write_capacity = 5
	hash_key = "userid"
	
	attribute {
		name = "userid"
		type = "S"
	}

}