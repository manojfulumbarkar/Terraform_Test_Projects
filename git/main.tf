
provider "aws" {
    region = "us-east-1"
  
}


##project_vpc
###vpc

resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = null
  enable_dns_support   = null

  tags = {
    "Name" = "myvpc"
  }

}


##internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    "Name" = "my-igw"
  }

}
