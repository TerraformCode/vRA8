# Create a new Blueprint
resource "vra_blueprint" "this" {
  name        = "Linux new terraform Demo"
  description = "Test from Terraform mvasant8"
  project_id = var.projectID

  content = <<-EOT
formatVersion: 1
inputs:
  totalMemoryMB:
    type: number
    title: totalMemoryMB
    minimum: 2048
    maximum: 4096
    default: '2048'
resources:
  Cloud_vSphere_Machine:
    type: Cloud.vSphere.Machine
    properties:
      image: Linux SUSE
      cpuCount: 1
      totalMemoryMB: '$${input.totalMemoryMB}'
      name: Machine001
  EOT
}