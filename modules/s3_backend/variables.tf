variable "s3_bucket_name"{
    type=string
    default="tf-s3-project2-090824"
}

variable "sse_algorithm"{
    type=string
    default="AES256"
}