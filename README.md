# terraform-aws-k8s-addons-grafana-agent-operator

A terraform module which provides the [custom addon](https://kops.sigs.k8s.io/addons/#custom-addons)
for [grafana-agent-operator](https://grafana.com/docs/agent/latest/operator/) to be used together
with [opzkit/k8s/aws](https://registry.terraform.io/modules/opzkit/k8s/aws/latest).

## How to update the module to a new version of the operator
Update the chart-versions in grafana/kustomization.yaml and ksm/kustomization.yaml.
Also update versions in any custom-resources that are versioned (i.e. `monitoring.grafana.com/v1alpha1/GrafanaAgent`)
as well as the version in output.tf.

Remove any existing downloaded charts:
```shell
rm -rf grafana/charts ksm/charts
```

Run the kustomizations like below
```shell
kubectl kustomize . -o grafana-agent.yaml --enable-helm
```

Check the changes and if everything looks correct, update version, commit, push and PR.

## Upgrade notes
### v0.26.1
The update to version 0.26.2 changes the label selector of the
grafana-agent-operator deployment which cannot be handled automatically.
Please remove the deployment manually before applying the new version.
