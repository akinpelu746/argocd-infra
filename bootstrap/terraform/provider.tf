provider "helm" {
  kubernetes {
    config_path = "../../kind-kubeconfig"
  }
}