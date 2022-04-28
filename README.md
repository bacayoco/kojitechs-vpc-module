# kojitechs-vpc-module


##  Usage 

## Description 
To use this module get the following block to use this module

## Module 

## Note

this is for ssh : "git::@https://github.com/bacayoco/kojitechs-vpc-module.git

```hcl
module vpc  {
        source =
     "git::https://github.com/bacayoco/kojitechs-vpc-module.git"

Vpc_cidr = "10.0.0.0/16"
cird_pubsubnet = ["10.0.0.0/24", "10.0.2.0/24"]
pub_availability_zones = ["us-east-1a", us-east-1b"]
database.availability_zone = ["us-east-1a", us-east-1b]
priv.availability_zone = ["us-east-1c", us-east-1c"]
cidr_databasesubnet = ["10.0.5.0/24","10.0.7.0/24"]
Enable_natgatway = true
}




```


