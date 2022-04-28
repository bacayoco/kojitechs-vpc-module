variable "vpc_cidr"{
    type = list
    default = true
    description = "Enable Nat gatway  | if user say true the create but if user says fauls then ignore "
}
variable "enable_nat_gatway"{
    type = bool
    description = " for my cidr "
}

variable "enable_dns_support"{
    type = bool
    description = " for my dns_support "
    default = null
}

variable "priv.availability_zone"{
    type = list
    description = " provide priv avaliability zone for priv.availability_zone"
}
variable "database.availability_zone"{
    type = list
    description = " provide priv avaliability zone for database availability_zone"
}

variable "cidr_databasesubnet"{
    type = list
    description = " provide priv cidr for cidr_databasesubnet"
}




variable "enable_dns_hostnames"{
    type = bool
    description = " for my dns_hostnames "
    default = null
}


variable "pub_availability_zones"{
    type = list
    description = " provide avaliability zone for pub_availability_zones "
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}


variable "cidr_pubsubnet" {
  type        = list(any)
  default     = "cidr_pubsubnet"
  description = "list of public cidrs"
}

variable "cidr_privsubnet" {
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  description = "list of private cidrs"
}


variable "cidr_database" {
  type        = list(any)
  default     = ["10.0.5.0/24", "10.0.7.0/24"]
  description = "list of database cidrs"
}


variable "create_vpc" {
  type        = bool
  default     = true
  description = "create vpc"
}

variable "component_name" {
  default = "kojitechs"
}

variable "http_port" {
  description = "http from everywhere"
  type        = number
  default     = 80
}


variable "https_port" {
  description = "https from everywhere"
  type        = number
  default     = 8080
}


variable "register_dns" {
  default = "kojitechs.com"
}
variable "dns_name" {
  type    = string
  default = "kojitechs.com"
}

variable "subject_alternative_names" {
  type = map(string)
  default = {
    default = "*.kojitechs.com"
    sbx     = "*.kelderanyi.com"
  }
}
