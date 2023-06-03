
resource "aws_amplify_app" "example" {
  name       = "nextjs"
  repository = "https://github.com/Kiranteja623/nextjs-s3-upload.git"

  # GitHub personal access token
  access_token = "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"
}
resource "aws_amplify_branch" "master" {
  app_id      = aws_amplify_app.example.id
  branch_name = "master"

  framework = "React"
  stage     = "DEVELOPMENT"
}


resource "aws_amplify_webhook" "master" {
  app_id      = aws_amplify_app.example.id
  branch_name = aws_amplify_branch.master.branch_name
  description = "triggermaster"
}