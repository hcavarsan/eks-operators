remote_state {
  backend = "s3"
  config = {
    bucket         = "tf-cavarsa-store-${yamldecode(file("common_values.yaml"))["aws_region"]}"
    key            = "${path_relative_to_include()}"
    region         = "${yamldecode(file("common_values.yaml"))["aws_region"]}"
    encrypt        = true
    dynamodb_table = "tf-cavarsa-store-lock-${yamldecode(file("common_values.yaml"))["aws_region"]}"
  }
}