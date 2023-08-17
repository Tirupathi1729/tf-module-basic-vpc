resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "gateway"
  }
}
resource "aws_internet_gateway_attachment" "example" {
  internet_gateway_id = aws_internet_gateway.gw
  vpc_id              = var.vpc_id
}
