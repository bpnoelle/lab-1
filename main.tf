variable "server-name" {
  type        = string
  description = "Name of a server to provision"
}

locals {
  minNumberOfServer = 1
  maxNumerOfServer = 10
}

variable "number-of-servers" {
type = number
description = "Required number od servers"
  validation {
  condition = var.number-of-servers >= local.minNumberOfServer && var.number-of-servers < local.maxNumerOfServer
  error_message = "Not supported number od server, it hsould be from the range [${local.minNumberOfServer}, ${local.maxNumerOfServer}]"
    }
}

output "out" {
 value = var.server-name 
}
