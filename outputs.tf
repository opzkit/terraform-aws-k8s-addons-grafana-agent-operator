output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.23.0"
    content : local.yaml
  }
}
