# Copyright (c) 2017-2018 Martin Donath <martin.donath@squidfunk.com>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.

# -----------------------------------------------------------------------------
# Outputs
# -----------------------------------------------------------------------------

# output.codebuild_service_role_name
output "codebuild_service_role_name" {
  value = "${aws_iam_role.codebuild.name}"
}

# output.codebuild_service_role_arn
output "codebuild_service_role_arn" {
  value = "${aws_iam_role.codebuild.arn}"
}

# output.codebuild_service_role_id
output "codebuild_service_role_id" {
  value = "${aws_iam_role.codebuild.id}"
}

# output.codebuild_bucket
output "codebuild_bucket" {
  value = "${aws_s3_bucket._.bucket}"
}

# output.codebuild_badge_url
output "codebuild_badge_url" {
  value = "https://s3.amazonaws.com/${
    aws_s3_bucket._.bucket
  }/${
    var.github_repository
  }/status.svg"
}

# output.codebuild_url
output "codebuild_url" {
  value = "https://console.aws.amazon.com/codebuild/home?region=${
    data.aws_region._.name
  }#/projects/${
    var.github_repository
  }/view"
}
