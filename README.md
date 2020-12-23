# null-provider
Terraform null-provider examples

## Pre-requirements
- [git](https://git-scm.com/downloads) need to be installed 
- [terraform](https://www.terraform.io/downloads.html) need to be installed 

## How to consume

```bash
git clone git@github.com:base-line/null-provider.git
cd null-provider
terraform init
terraform apply
```

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

## As result

the result will be 3 resources created, use `terraform state list` to check the list

```bash
null_resource.count[0]
null_resource.count[1]
null_resource.name
```

## Destroy

destroy created infrastructure if need be

```
terraform destroy
```