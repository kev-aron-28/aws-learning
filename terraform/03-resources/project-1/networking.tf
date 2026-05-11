resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "test-vpc-nginx"
    ManagedBy = "Terraform"
    Project   = "01-project"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name      = "test-vpc-nginx-public"
    ManagedBy = "Terraform"
    Project   = "01-project"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name      = "test-vpc-nginx-public"
    ManagedBy = "Terraform"
    Project   = "01-project"
  }

}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
