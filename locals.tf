locals {
  project = {
    "osc-project" = {
      description = "os.c terraform automation project"
    }
  }
  workspace = {
    "osc-tfe" = {
      description         = "os.c terraform automation workspace"
      execution_mode      = "remote"
      project_id          = module.project["osc-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/osc-terraform-tfe"
    }

    "osc-github" = {
      description         = "os.c github automation workspace"
      execution_mode      = "remote"
      project_id          = module.project["osc-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/osc-terraform-github"
    }
  }
}
