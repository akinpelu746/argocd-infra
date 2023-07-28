```bash
$ terraform -chdir=bootstrap/terraform init
$ terraform -chdir=bootstrap/terraform -auto-approve apply
$ kubectl apply -k bootstrap/argocd
```

- kyverno is used to replicate secrets throughout the cluster ([link](https://kyverno.io/policies/other/sync-secrets/sync-secrets/))
