
resource "aws_instance" "fazal" {
  ami           = var.ami_id
  instance_type = var.ins_type
  key_name = "batch9"
  subnet_id = "subnet-0a1c3a5b7caea261e"
  associate_public_ip_address = "true"
  tags = {
    Name = "Fazz-server"
  }
}



resource "aws_s3_bucket" "fazz_buck" {
  bucket = "my-fazal-test-bucket"

  tags = {
    Name        = "My fazz bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "fazz_acl" {
  bucket = aws_s3_bucket.fazz_buck.id
  acl    = "private"
}
