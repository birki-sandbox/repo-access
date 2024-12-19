module "repo_access" {
  source = "./modules/repo_access"

  repo = "repo-2"

  access = [
    {
      team       = "engineers"
      permission = "push"
    },
    {
      team       = "admins"
      permission = "admin"
    }
  ]
}
