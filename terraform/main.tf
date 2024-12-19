locals {
  repos = { for f in fileset(path.module, "../repos/**.yaml") :
    trimsuffix(basename(f), ".yaml") => [
      for entry in yamldecode(file(f)) :
      merge(entry, { "repo_name" = trimsuffix(basename(f), ".yaml") })
    ]
  }
}

resource "github_team_repository" "repo_access" {
  for_each = { for repo, teams in local.repos : repo => teams }

  repository = each.value[0].repo_name
  team_id    = each.value[0].team
  permission = each.value[0].permission
}
