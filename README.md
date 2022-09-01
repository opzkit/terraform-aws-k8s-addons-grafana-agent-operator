# terraform-aws-k8s-addons-grafana-agent-operator

A terraform module which provides the [custom addon](https://kops.sigs.k8s.io/addons/#custom-addons)
for [grafana-agent-operator](https://grafana.com/docs/agent/latest/operator/) to be used together
with [opzkit/k8s/aws](https://registry.terraform.io/modules/opzkit/k8s/aws/latest).

## How to update the module to a new version of the operator
Update the chart-versions in grafana/kustomization.yaml and ksm/kustomization.yaml.

Remove any existing downloaded charts:
```shell
rm -rf grafana/charts ksm/charts
```

Run the kustomizations like below
```shell
kubectl kustomize . -o grafana-agent.yaml --enable-helm
```

Check the changes and if everything looks correct, commit, push and PR.
