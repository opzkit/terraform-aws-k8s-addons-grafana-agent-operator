output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.27.1"
    content : local.yaml
  }
}
