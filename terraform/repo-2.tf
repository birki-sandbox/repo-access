module "access" {
  source = "./modules/access"

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
