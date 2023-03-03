resource "aws_vpc" "vpc" {
  instance_tenancy = "default"
  cidr_block = var.cidr_block
}

#################### Aws_Internet_Gateway ##########
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}

################### Aws_Subnets ####################
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = var.availability_zone_1
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = var.availability_zone_2
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = var.availability_zone_1
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = var.availability_zone_2
}

########################## Aws_Route_Table ##########
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc.id
}

##################### Aws_Route_Table_Association #################
resource "aws_route_table_association" "public_subnet_1_association" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "public_subnet_2_association" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "private_subnet_1_association" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_subnet_2_association" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_route_table.id
}

############# Aws_Nat_Gateway ####################
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = aws_subnet.public_subnet_1.id
}

resource "aws_eip" "nat_gateway_eip" {
    vpc = true
}

############### Aws_Route ##################
resource "aws_route" "private_route" {
  depends_on             = [aws_route_table.public_route_table]
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
###################################################