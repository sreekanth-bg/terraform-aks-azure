'''
steps for argocd

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace ingress-basic --create-namespace \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."kubernetes\.io/os"=linux \
    --set controller.image.digest="" \
    --set controller.admissionWebhooks.patch.nodeSelector."kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.image.digest="" \
    --set defaultBackend.nodeSelector."kubernetes\.io/os"=linux \
    --set defaultBackend.image.digest=""
	
kubectl --namespace ingress-basic get services -o wide -w nginx-ingress-ingress-nginx-controller 

for local and QA

refer - https://github.com/sreekanth-bg/devspace-vcluster-argocd-demo/

export GITHUB_ORG=sreekanth-bg
export GITHUB_TOKEN=
export INGRESS_HOST=
export DOCKERHUB_TOKEN=
export DOCKERHUB_USERNAME=infovein69

kubectl apply -f ingress.yaml -n argocd

k3d kubeconfig merge devops-toolkit
export KUBECONFIG=/home/bgs/.k3d/kubeconfig-devops-toolkit.yaml

vcluster list
vcluster --namespace a-team delete a-team
'''