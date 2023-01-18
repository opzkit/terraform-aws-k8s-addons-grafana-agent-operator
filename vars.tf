variable "logs_url" {
  type        = string
  description = "The URL to use to push Loki logs to"
}

variable "logs_secret" {
  type        = string
  default     = "loki"
  description = "Name of secret containing auth information for Loki"
}

variable "logs_username_key" {
  type        = string
  default     = "username"
  description = "Key in logs secret containing username for Loki"
}

variable "logs_password_key" {
  type        = string
  default     = "password"
  description = "Key in logs secret containing password for Loki"
}

variable "metrics_url" {
  type        = string
  description = "The URL to use to push Prometheus metrics to"
}

variable "metrics_secret" {
  type        = string
  default     = "prometheus"
  description = "Name of secret containing auth information for Prometheus"
}

variable "metrics_username_key" {
  type        = string
  default     = "username"
  description = "Key in metrics secret containing username for Prometheus"
}

variable "metrics_password_key" {
  type        = string
  default     = "password"
  description = "Key in metrics secret containing password for Prometheus"
}

variable "cluster_name" {
  type        = string
  description = "Name of the cluster"
}

variable "external_labels" {
  type        = map(string)
  default     = {}
  description = "External labels to be applied to Grafana Agent"
}
