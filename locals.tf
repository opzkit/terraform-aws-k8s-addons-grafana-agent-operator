locals {
  yaml = templatefile("${path.module}/grafana-agent.yaml", {
    logs_url             = var.logs_url
    logs_secret          = var.logs_secret
    logs_username_key    = var.logs_username_key
    logs_password_key    = var.logs_password_key
    metrics_url          = var.metrics_url
    metrics_secret       = var.metrics_secret
    metrics_username_key = var.metrics_username_key
    metrics_password_key = var.metrics_password_key
  })
}
