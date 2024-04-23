variable "condition" {
  description = "Rule condition"
  type = object({
    host_header = optional(string,null)
    path_pattern = optional(string,null)
    http_method = optional(string,null)
    source_ip = optional(string,null)
  })
}
variable "target_group_arn" {
  description = "Rule target"
  type = string
}

variable "alb_listener_arn" {
  description = "LB listener ARN"
  type = string
}

variable "priority" {
  description = "Rule priority"
  type = number
}
