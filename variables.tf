##Project##

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
}


#Vpc#

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
    type = map
    default = {}
}


##IGW##

variable "igw_tags" {
    type = map
    default = {}
}

##Public subnet cidrs##

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please create two valid public subnet cidrs"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}


##Private subnet cidrs##

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please create two valid private subnet cidrs"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}


##Database subnet cidrs##

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please create two valid database subnet cidrs"
    }
}

variable "database_subnet_cidr_tags" {
    type = map
    default = {}
}

##Database subnet group## As DB is different and private all the DB's should be in the same subnet group

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

##NAT Gateway##

variable "nat_gateway_tags" {
    type = map
    default = {}
}


variable "public_route_table_tags" {
    type = map
    default = {}
}


variable "private_route_table_tags" {
    type = map
    default = {}
}


variable "database_route_table_tags" {
    type = map
    default = {}
}










