locals {
  environment = substr (var.environment[0], 0, 1)
  os          = substr (var.os[1], 0, 1)
  region      = substr (var.region, 0, 2)
  zone1       = substr (element(split ("-", var.zone), 1), 0, 1)
  zone2       = element(split ("", (element(split ("-", var.zone), 1))), 4)
  zone3       = element(split("-", var.zone), 2)
  zone        = "${local.zone1}${local.zone2}${local.zone3}"
  serial-no   = var.serial-no
  drive-mount = var.drive-mount
  snapshot       = var.snapshot
  time = timestamp()
 
   example     = "${local.region}${local.zone}${local.environment}${local.os}${local.serial-no}-${local.drive-mount}-${local.snapshot}-${local.time}"
}

resource "null_resource" "example" {
  count = length(local.environment)
  triggers = {
    "production" = local.example
    "development"= local.example
}