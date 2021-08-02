output "deployment_id" {
  value = ec_deployment.ecproject.id
}

output "elasticsearch_version" {
  value = ec_deployment.ecproject.version
}

output "elasticsearch_cloud_id" {
  value = ec_deployment.ecproject.elasticsearch[0].cloud_id
}

output "elasticsearch_https_endpoint" {
  value = ec_deployment.ecproject.elasticsearch[0].https_endpoint
}

output "elasticsearch_username" {
  value = ec_deployment.ecproject.elasticsearch_username
}

output "elasticsearch_password" {
  value = ec_deployment.ecproject.elasticsearch_password
  sensitive = true
}
