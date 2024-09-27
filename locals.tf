locals {
  version       = "0.43.2"
  agent_version = "0.43.3"
  yaml = templatefile("${path.module}/custom-resources.yaml.tmpl", {
    cluster_name         = var.cluster_name
    external_labels      = merge({ cluster = var.cluster_name }, var.external_labels)
    logs_url             = var.logs_url
    logs_secret          = var.logs_secret
    logs_username_key    = var.logs_username_key
    logs_password_key    = var.logs_password_key
    metrics_url          = var.metrics_url
    metrics_secret       = var.metrics_secret
    metrics_username_key = var.metrics_username_key
    metrics_password_key = var.metrics_password_key
    tolerations          = var.tolerations
    agent_version        = local.agent_version
  })
}
