
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "jatin"
  }
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-terraform-2024"

  tags = {
    Name = "ExampleBucket"
  }
}