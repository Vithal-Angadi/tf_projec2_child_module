# create s3 bucket
resource "aws_s3_bucket" "s3_backend"{
    bucket="tf-s3-project2-090824"
}

# create s3 bucket versioning
resource "aws_s3_bucket_versioning" "s3_backend_version_enable"{
    bucket=aws_s3_bucket.s3_backend.id
    versioning_configuration{
        status="Enabled"
    }
}

