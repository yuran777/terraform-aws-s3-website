
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  bucket_name = "test-bucket"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

run "bucket_name_validation" {
  assert {
    condition     = var.bucket_name == "test-bucket"
    error_message = "Bucket name should be 'test-bucket'"
  }
}

run "tags_validation" {
  assert {
    condition     = var.tags["Terraform"] == "true"
    error_message = "Tag 'Terraform' should be 'true'"
  }

  assert {
    condition     = var.tags["Environment"] == "dev"
    error_message = "Tag 'Environment' should be 'dev'"
  }
}

run "module_validation" {
  assert {
    condition     = module.aws-s3-website.bucket_name == "test-bucket"
    error_message = "Module bucket name should be 'test-bucket'"
  }

  assert {
    condition     = module.aws-s3-website.tags["Terraform"] == "true"
    error_message = "Module tag 'Terraform' should be 'true'"
  }

  assert {
    condition     = module.aws-s3-website.tags["Environment"] == "dev"
    error_message = "Module tag 'Environment' should be 'dev'"
  }
}

Please note that these tests are generated and should be reviewed by the module author. They are meant to serve as a starting point for testing your Terraform configuration.