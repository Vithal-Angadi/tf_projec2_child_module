variable "root_s3_bucket_name" {
  type = string
  default = "tf-s3-project2-090824"
}

variable "root_sse_algorithm" {
  type = string
  default = "AES256"
}

variable "root_dynamodb_name" {
  type = string
  default = "backend_locking" 
}

variable "root_hash_key" {
  type = string
  default = "LockID"
}