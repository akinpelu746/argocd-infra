export KUBERNETES_VERSION ?= v1.27.3

init:
	kind create cluster --name argocd-infra --image kindest/node:${KUBERNETES_VERSION}
	kind get kubeconfig --name argocd-infra > kind-kubeconfig
	terraform -chdir=bootstrap/terraform init
	terraform -chdir=bootstrap/terraform apply

apply:
	kubectl apply -k bootstrap/argocd