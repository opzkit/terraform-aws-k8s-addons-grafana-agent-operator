output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.28.2"
    content : local.yaml
  }
}
