variable "rg-name" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "strg-name" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    access_tier = string
    account_tier = string
    account_replication_type = string
  }))
  
}