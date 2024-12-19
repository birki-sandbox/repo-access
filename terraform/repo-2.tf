resource "github_team_repository" "repo-1" {
  team_id    = "engineers"
  repository = "repo-2"
  permission = "admin"
}
