variable "condition" {
  description = "Rule condition"
  type = object({
    host_header = optional(string,null)
    path_pattern = optional(string,null)
    http_method = optional(string,null)
    source_ip = optional(string,null)
  })
}
variable "redirect" {
  description = "Redirect headers"
  type = object({
    host = optional(string)
    path = optional(string)
    port = optional(number)
    protocol = optional(string)
    status_code = string
  })
}

variable "alb_listener_arn" {
  description = "LB Listener ARN"
  type = string
}
variable "priority" {
  description = "Rule priority"
  type = number
}
