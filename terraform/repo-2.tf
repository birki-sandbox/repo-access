resource "github_team_repository" "repo-2" {
  team_id    = "engineers"
  repository = "repo-2"
  permission = "write"
}
