variable "a" {
  type = number
}

variable "b"{
  type = number
}


variable "numbers" {
  type = list(var.a, var.b)
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
  wynik_k = contains(keys(local.wynik), var.operand)
}

output "result" {
  value =  var.numbers

}

