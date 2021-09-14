variable "thing_name" {
  type = string
}

variable "thing_type" {
  type = string
}

variable "iot_policy" {
  default = "thing1"
  type    = string
}

variable "aws_info" {
  type = object({
    aws_region     = string
    aws_account_id = string
  })

  default = {
    aws_region     = "ap-southeast-1"
    aws_account_id = "account_id"
  }

  description = <<EOF
  Group variables of aws account
  ```
  aws_info = {
   aws_region = "ap-southeast-1"
    aws_account_id = "account_id"
  }```
  EOF
}
