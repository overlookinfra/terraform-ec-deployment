variable "traffic_filter_sourceip" {
  description = "traffic filter source IP"
  type        = string
  default     = ""
}

variable "ec_region" {
# For a list of all cloud provider regions see https://www.elastic.co/guide/en/cloud/current/ec-regions-templates-instances.html
  description = "cloud provider region"
  type        = string
  default     = "gcp-us-west1"
}

variable "deployment_templateid" {
# List of deployment types can be found here https://www.elastic.co/guide/en/cloud/current/ec-create-deployment.html
  description = "ID of Elastic Cloud deployment type"
  type        = string
  default     = "gcp-io-optimized"
}

variable "autoscale" {
  description = "Enable autoscaling of elasticsearch"
  type        = string
  default     = "true"
}

variable "ec_stack_version" {
  description = "Version of Elastic Cloud stack to deploy"
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of resources"
  type        = string
  default     = "ecproject"
}
