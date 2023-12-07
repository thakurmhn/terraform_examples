# Use of string functions


# Concat string

variable "first_name" {
    default = "Mohan"
}

variable "last_name" {
    default = "Thakur"
}

output "formated_string" {
    value = "${format("First name is %s, Lastname is %s", var.first_name, var.last_name)}"
  
}


# Remove new line character
variable "hello_with_newline" {
    default = "hello\n"
}

output "hello_without_newline" {
    value = chomp(var.hello_with_newline)
  
}

# Check string endswith

variable "_hello" {
  default = "hello world"
}

output "mystring" {
  value = endswith(var._hello, "world")
}

variable "my_map" {
  type = map(string)
  default = {
    "a" = "1"
    "b" = "hello"
  }
}

## example locals and lookup 

locals {
  my_value = lookup(var.my_map, "b", "")
}

output "eg_map" {
    value = local.my_value
}