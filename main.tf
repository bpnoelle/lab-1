
variable "numbers" {
  type        = list(number)
  description = "Lista 2 liczb np [15,3]"
  default     = [15, 3]
}

variable "operator" {
  description = "Operacja do wykonania przez kalkulator: +, -, *, /"
  type        = string
  default     = "+"
}

locals {
  
  a = var.numbers[0]
  b = var.numbers[1]

 
  dodawanie   = local.a + local.b
  odejmowanie = local.a - local.b
  mnozenie    = local.a * local.b
  dzielenie   = local.b != 0 ? local.a / local.b : "Division by zero"

  
  wynik_map = {
    "+" = local.dodawanie
    "-" = local.odejmowanie
    "*" = local.mnozenie
    "/" = local.dzielenie
  }

 
  wynik_k = lookup(local.wynik_map, var.operator, "Nieznany operator")
}

output "result" {
  value = local.wynik_k
}


