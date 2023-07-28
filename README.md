# argocd-infra

```bash
# Create a local Kind cluster and bootstrap ArgoCD
$ make init
```

### Requirements
A central ArgoCD instance that can deploy to multiple clusters

### Questions
1. For some reason I can't use a Git Helm chart (like how the other charts are setup) for cluster-proportional-autoscaler. it needs to be referenced as a remote Helm chart. Is there a way to fix this?
2. Is the way I'm setting up the root-app a best practice?

### TODO
- Test complex values in the helm.values config
  - Test looping over values for things like Karpenter provisioners ([link](https://github.com/rallyware/terraform-argocd-aws-eks-cluster-bootstrap/blob/c300d611e204e25483c8be3f26075bf4623d74df/charts/karpenter-provisioners/Chart.yaml))
- Move to Kustomize instead of Terraform for installing Argo ([link](https://github.com/locmai/humble/tree/main/bootstrap/argocd))
- How can we  reduce the naming repetitions in the AppSets ([link](https://argocd-applicationset.readthedocs.io/en/stable/Generators-Git/#git-generator-files))
- How can we bootstrap the secrets ArgoCD needs 
- Add labels to all Appsets and test refreshing/syncing w/ CLI
- Add finalizers to all AppSets