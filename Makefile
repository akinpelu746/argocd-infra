export KUBERNETES_VERSION ?= v1.27.3

init:
	kind create cluster --name argocd-infra --image kindest/node:${KUBERNETES_VERSION}
	kind get kubeconfig --name argocd-infra > kind-kubeconfig
	terraform -chdir=bootstrap/terraform init
	terraform -chdir=bootstrap/terraform apply -auto-approve
	kubectl apply -k bootstrap

clean:
	 @kind delete cluster --name argocd-infra
	 @rm -rf bootstrap/terraform/.terraform bootstrap/terraform/.terraform.lock.hcl \
	 	bootstrap/terraform/terraform.tfstate bootstrap/terraform/terraform.tfstate.backup