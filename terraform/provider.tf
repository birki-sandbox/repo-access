terraform {
  cloud {
    organization = "birki-sandbox"

    workspaces {
      name = "repo-access"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.GITHUB_TOKEN
  owner = var.OWNER
}
