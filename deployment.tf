
resource "vra_deployment" "this" {
  name        = "Linux new Deployment"
  description = "Deployed from vRA provider for Terraform."

  blueprint_id      = vra_blueprint.this.id
  project_id        = var.projectID
  inputs = {
        totalMemoryMB = "2048"
  }
  timeouts {
    create = "60m"
    delete = "2h"
  }
}

