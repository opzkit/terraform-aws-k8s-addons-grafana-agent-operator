output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.24.2"
    content : local.yaml
  }
}
