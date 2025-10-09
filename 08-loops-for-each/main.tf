resource "local_file" "foo" {
  for_each = var.demo
  content = each.value["content"]
  filename = "/tmp/${each.key}"
}

variable "demo" {
  default = {
    APPLE = {
      content = "Apple is good for health"
    }
    BANANA = {
      content = "Good for vitamin"
    }
    ORANGE = {
      content = "Good for vitamin C"
    }
  }
}