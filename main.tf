
variable "a" {
  type = number
}

variable "b"{
  type = number
}

variable "numbers" {
  type = list(number)
  description = "lista 2 liczb"
  default = [ 4, 2 ]
}


#Operatory + ,-, / ,*
variable "operand" {
  type = string
  default = "+"
  description = "operacja do wykonania przez kalkulator"
}

locals {
  liczby = var.numbers

  dodawanie = var.a + var.b
  odejmowanie = var.b - var.b
  mnozenie  = var.a * var.b
  dzielenie = var.a / var.b

  wynik = { 
    "+" = local.dodawanie
    "-" = local.odejmowanie
    "*" = local.mnozenie
    "/" = local.dzielenie
  }

}


output "result" {
  value =  var.numbers

}






/*
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
default = 2

  validation {
  condition = var.number-of-servers >= local.minNumberOfServer && var.number-of-servers < local.maxNumerOfServer
  error_message = "Not supported number od server, it hsould be from the range [${local.minNumberOfServer}, ${local.maxNumerOfServer}]"
    }
}

variable "number-of-disks" {
  type = number
}

variable "list-of-names" {
  type = list(string)
}

 
output "list-of-names" {
    value = "${join(", ",var.list-of-names)}"
    }

*/