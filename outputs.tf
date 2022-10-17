output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.28.0"
    content : local.yaml
  }
}
