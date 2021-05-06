locals {
  
  environment = [for environment in var.environment : substr(environment, 0, 1)]
  os          = [for os in var.os : substr(os, 0, 1)]
  az_zone1        = element([for azs in var.azs : element(split("", element(split("-", azs), 0)), 0)], 0)
  az_zone2        = [for azs in var.azs : element(split("-", azs), 1)]
 
     
   #--Example      = setproduct(["${var.region}"],["${local.az_zone1}"],["${local.az_zone2[0]}"],["${local.environment[0]}"],["${local.os[0]}"])
   Example = setproduct(local.az_zone2,local.environment,local.os)
   exmp  =[for y in local.Example : "${var.region}${local.az_zone1 }${y[0]}${y[1]}${y[2]}"]
  
}
 


#Example      = setproduct(["${var.region}"],["${local.az_zone1}"],["${local.az_zone2}"],["${local.environment}"],["${local.os}"])
 # exmp             = "${var.region}${local.az_zone1}${local.az_zone2[0]}${local.environment[*]}${local.os[*]}}"
 #Example      = setproduct([var.region],[local.az_zone1],[local.az_zone2],[local.environment],[local.os])