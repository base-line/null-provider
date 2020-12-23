// simple null provider
resource "null_resource" "name" {
  triggers = {
    key = "value"
  }
}

// null provider with count
resource "null_resource" "count" {
  count = 2
  triggers = {
    key = "value ${count.index}"
  }
}