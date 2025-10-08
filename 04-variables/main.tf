variable "s1" {
  default = "Hello"
}

variable "n1" {
  default = 2
}

variable "b1" {
  default = true
}

# Data types that terraform supports
# 1. string
# 2. Number
# 3. Boolean

# String only require quotes, that to be only double quotes. Terraform does not have single quotes support.

variable "v1" {
  default = "Hello"
}

variable "v2" {
  default = [
  "Hello",
    2,
    false
  ]
}

variable "v3" {
  default = {
    course = "devops"
    cloud = "azure"
  }
}

# Variable type that terraform supports
# 1. Plain
# 2. List ( A key having multiple values , And each value can be different data type)
# 3. Map (A key is having again keys and values)

## Access your variable

output "o1" {
  value = var.v1
}

# while accessing the variable if we have some string combination then we can access it with ${}

output "o2" {
  value = "${var.v1} - john"
}

# Access a value of list
output "o3" {
  value = var.v2[0]
}

# Access a value of map
output "o4" {
  value = var.v3["cloud"]
}

# So far we are hard coding the values in variables, Most times those come as input

variable "v10" {}
output "o10" {
  value = var.v10
}