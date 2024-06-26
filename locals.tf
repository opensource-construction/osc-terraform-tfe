locals {
  project = {
    "osc-project" = {
      description = "os.c terraform automation project"
    }
  }
  workspace = {
    "osc-workspace" = {
      description    = "os.c terraform automation workspace"
      execution_mode = "local"
      project_id     = module.project["osc-project"].id
    }
  }
}