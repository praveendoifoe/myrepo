resource "aws_ecr_repository" "ecr" {
  name                 = var.name
  image_tag_mutability = var.tag_mutability #"MUTABLE"
  image_scanning_configuration {
    scan_on_push = var.scan-on-push
  }
  encryption_configuration{
  encryption_type = var.encryption-type
  kms_key = var.kmskeyid
  }
  }

resource "aws_ecr_lifecycle_policy" "main" {
  repository = aws_ecr_repository.ecr.name
 
  policy = jsonencode({
   rules = [{
     rulePriority = 1
     description  = "keep last 1 images"
     action       = {
       type = "expire"
     }
     selection     = {
       tagStatus   = "any"
       countType   = "imageCountMoreThan"
       countNumber = 1
     }
   }]
  })
}