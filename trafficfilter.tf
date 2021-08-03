resource "ec_deployment_traffic_filter" "gcp_vpc_nat" {
  name   = "${var.name}_filter"
  region = var.ec_region
  type   = "ip"

  rule {
    source = var.traffic_filter_sourceip
  }
}

resource "ec_deployment_traffic_filter_association" "ec_tf_association" {
  traffic_filter_id = ec_deployment_traffic_filter.gcp_vpc_nat.id
  deployment_id     = ec_deployment.ecproject.id
}
