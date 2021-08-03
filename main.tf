provider "ec" {}

# Retrieve the latest stack pack version
data "ec_stack" "latest" {
  version_regex = "latest"
  region        = var.ec_region
}

# Create an Elastic Cloud deployment
resource "ec_deployment" "ecproject" {
  name = var.name

  # Mandatory fields
  region                 = var.ec_region
  version                = var.ec_stack_version == "" ? data.ec_stack.latest.version : var.ec_stack_version
  deployment_template_id = var.deployment_templateid

  traffic_filter = [
    ec_deployment_traffic_filter.gcp_vpc_nat.id
  ]

  elasticsearch {
    autoscale = var.autoscale
  }

  kibana {}
}
