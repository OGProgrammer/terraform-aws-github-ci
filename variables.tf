# Copyright (c) 2016-2017 Martin Donath <martin.donath@squidfunk.com>

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
# Variables: General
# -----------------------------------------------------------------------------

# var.namespace
variable "namespace" {
  description = "AWS resource namespace/prefix"
  default     = "github-ci"
}

# -----------------------------------------------------------------------------
# Variables: GitHub
# -----------------------------------------------------------------------------

# var.github_oauth_token
variable "github_oauth_token" {
  description = "GitHub OAuth token for repository access"
  default     = ""
}

# var.github_organization
variable "github_organization" {
  description = "GitHub organization name"
}

# var.github_repository
variable "github_repository" {
  description = "GitHub repository name"
}

# var.github_bot_name
variable "github_bot_name" {
  description = "GitHub commit status bot name"
  default     = "AWS CodePipeline"
}

# -----------------------------------------------------------------------------
# Variables: CodeBuild
# -----------------------------------------------------------------------------

# var.codebuild_compute_type
variable "codebuild_compute_type" {
  description = "Compute resources used by the build"
  default     = "BUILD_GENERAL1_SMALL"
}

# var.codebuild_image
variable "codebuild_image" {
  description = "Base image for provisioning"
  default     = "aws/codebuild/ubuntu-base:14.04"
}

# -----------------------------------------------------------------------------
# Variables: CodePipeline
# -----------------------------------------------------------------------------

# var.codepipeline_artifacts_bucket
variable "codepipeline_artifacts_bucket" {
  description = "S3 bucket to store build artifacts"
}