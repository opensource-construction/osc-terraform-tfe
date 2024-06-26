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
      vcs_repo_identifier = "opensource-construction/osc-terraform-tfe"
    }
  }
}
