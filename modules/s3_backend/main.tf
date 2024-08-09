# create s3 bucket
resource "aws_s3_bucket" "s3_backend"{
    bucket=var.s3_bucket_name
}

# create s3 bucket versioning
resource "aws_s3_bucket_versioning" "s3_backend_version_enable"{
    bucket=aws_s3_bucket.s3_backend.id
    versioning_configuration{
        status="Enabled"
    }
}

# create encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "s3_backend_sse"{
    bucket = aws_s3_bucket.s3_backend.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = var.sse_algorithm
        }
    }
    depends_on = [ 
        aws_s3_bucket_versioning.s3_backend_version_enable
     ]
}
