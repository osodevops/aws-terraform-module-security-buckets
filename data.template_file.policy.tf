data "template_file" "policy" {
  template = "${file("${path.module}/files/s3_certificate_policy.json")}"

  vars = {
    s3_bucket_name = local.certificate_bucket_name
    account_id     = data.aws_caller_identity.current.account_id
  }
}
