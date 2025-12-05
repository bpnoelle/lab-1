/*variable "a" {
  type = number
  description = "pierwsza liczba"
}

variable "b"{
  type = number
  description = "druga liczba"
}
*/

variable "numbers" {
  type = list(number)
  description = "lista 2 liczb np [15,3]"
  default = [ 15, 3 ]
}

variable "operator" {
  description = "operacja do wykonania przez kalkulator +, - ,* ,/"
  type = string
  
}

locals {
  numbers = [var.numbers]
}

/*
#Operatory + ,-, / ,*
variable "operand" {
  type = string
  default = "+"
  description = "operacja do wykonania przez kalkulator"
}
*/

locals {
  liczby = var.numbers

  a = length(local.liczby)
  b =length(local.liczby)

  dodawanie = local.a + local.b
  //odejmowanie = var.b - var.b
  //mnozenie  = var.a * var.b
  //dzielenie = var.a / var.b

  wynik = { 
    "+" = local.dodawanie
   // "-" = local.odejmowanie
   // "*" = local.mnozenie
   // "/" = local.dzielenie
  }
  wynik_k = local.dodawanie 
}

output "result" {
  value =  var.numbers

}

