output "deployment_id" {
  description = "Elastic Cloud deployment ID"
  value       = ec_deployment.ecproject.id
}

output "elasticsearch_version" {
  description = "Stack version deployed"
  value       = ec_deployment.ecproject.*.version
}

output "elasticsearch_cloud_id" {
  description = "Elastic Cloud project deployment ID"
  value       = ec_deployment.ecproject.*.cloud_id
}

output "elasticsearch_https_endpoint" {
  description = "elasticsearch https endpoint"
  value       = ec_deployment.ecproject.*.https_endpoint
}

output "elasticsearch_username" {
  description = "elasticsearch username"
  value       = ec_deployment.ecproject.*.elasticsearch_username
}

output "elasticsearch_password" {
  description = "elasticsearch password"
  value       = ec_deployment.ecproject.*.elasticsearch_password
  sensitive   = true
}
