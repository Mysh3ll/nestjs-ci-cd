resource "aws_ecr_repository" "aws-ecr" {
  name = var.ecr_name
  tags = {
    Name        = "${var.ecr_name}-ecr"
    Environment = var.app_environment
  }
}

output "ecr" {
  value = aws_ecr_repository.aws-ecr
}
