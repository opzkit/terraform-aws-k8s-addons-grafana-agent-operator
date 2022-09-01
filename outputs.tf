output "addon" {
  value = {
    name : "grafana-agent-operator"
    version : "0.26.1"
    content : local.yaml
  }
}
