variable "GITHUB_TOKEN" {
  description = "A GitHub API token"
  type        = string
  sensitive   = true
}

variable "OWNER" {
  description = "The owner / organization"
  type        = string
  sensitive   = false
  default     = "birki-sandbox"
}
