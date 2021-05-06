variable "environment" {
  default =["production", "development"]
}
 
variable "os" {
  default = ["windows", "linux"]
}
 
variable "region" {
  default = "us-west4"
}
 
variable "zone" {
  default = "us-west4-a"
}
 
variable "serial-no" {
  default = "0001"
}
 
variable "drive-mount" {
  default = "data01"
}
 
variable "snapshot" {
  default = "snp"
}
