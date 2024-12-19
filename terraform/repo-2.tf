resource "github_team_repository" "repo-2" {
  team_id    = "engineers"
  repository = "repo-2"
  permission = "push"
}

resource "github_team_repository" "repo-2" {
  team_id    = "admins"
  repository = "repo-2"
  permission = "admin"
}
