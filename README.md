# null-provider
Terraform null-provider examples

## Example - null provider

simple null provider with default values

```bash
resource "null_resource" "name" {
  triggers = {
    key = "value"
  }
}
```

## Example - null provider with count 

simple null provider with count

```bash
resource "null_resource" "count" {
  count = 2
  triggers = {
    key = "value ${count.index}"
  }
}
```

as result the result will be 3 resources created, use `terraform state list` to check the list

```bash
null_resource.count[0]
null_resource.count[1]
null_resource.name
```
