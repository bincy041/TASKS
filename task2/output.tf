output "environment" {
  value = local.environment
}
 
output "os" {
  value = local.os
}
 
output "example" {
   value = local.Example
 }

output"EXAMPLE"{
  value = local.exmp
}

 #--value="${join("", local.Example[0])}"
 # value=[for example in local.Example : join("", local.Example[0])]
# value=join(" " ,local.Example)
#value=[for Example in local.Example : "${join("", Example)}"]

