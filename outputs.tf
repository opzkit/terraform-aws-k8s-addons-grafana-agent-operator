output "addons" {
  value = [
    {
      name : "grafana-agent-operator"
      version : local.version
      content : file("${path.module}/grafana-agent.yaml")
    },
    {
      name : "grafana-agent-operator-config"
      version : local.version
      content : local.yaml
    }
  ]
}
