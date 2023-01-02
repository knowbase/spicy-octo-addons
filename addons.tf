module "eks_blueprints_kubernetes_addons" {
  source = "github.com/aws-ia/terraform-aws-eks-blueprints//modules/kubernetes-addons"

  cluster_id                    = <EKS-CLUSTER-ID>

  # EKS Addons
  enable_amazon_eks_aws_ebs_csi_driver  = true
  enable_amazon_eks_coredns             = true
  enable_amazon_eks_kube_proxy          = true
  enable_amazon_eks_vpc_cni             = true

  #K8s Add-ons
  enable_argocd                        = true
  enable_aws_for_fluentbit              = true
  enable_aws_load_balancer_controller  = true
  enable_cluster_autoscaler            = true
  enable_metrics_server                = true
}