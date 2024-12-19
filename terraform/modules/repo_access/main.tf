variable "repo" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "access" {
  description = "List of team access configurations"
  type = list(object({
    team       = string
    permission = string
  }))
}

resource "github_team_repository" "repo_access" {
  for_each   = { for team in var.access : team.team => team }
  repository = var.repo
  team_id    = each.value.team
  permission = each.value.permission
}
