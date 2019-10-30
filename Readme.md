** Kubernetes basics - Getting started **

Tutorial to get started with some `kubectl` commands and a `kube-manifest.yaml` to create and manage a single-node cluster using docker-for-desktop for Kubernetes integrated with Docker for Mac version with Engine: 19.03.4 and Kubernetes: v1.14.7 at release time of this project.

# Kubernetes

Deploy a new Docker stack (default orchestrator is Kubernetes): `docker stack deploy -c docker-compose.yaml nginx`
Stop stack `docker stack rm nginx`

Kubernetes version: `kubectl version`

Config view: `kubectl config view`
Get config contexts: `kubectl config get-contexts`
Set a config context (e.g. docker-for-desktop): `kubectl config use-context docker-for-desktop`

Get cluster information: `kubectl cluster-info`
View nodes in the cluster: `kubectl get nodes`
Get deployments: `kubectl get deployments`
Get pods: `kubectl get pods`

Enables direct access to the API with proxy: `kubectl proxy`

The most common operations can be done with the following `kubectl` commands:
`kubectl get <resource>` - list resources
`kubectl describe <resource>` - show detailed information about a resource
`kubectl logs <pod_name|type/name>` - print the logs from a container in a pod
`kubectl exec <pod_name> <command>` - execute a command on a container in a pod

Example to scale up a Deployment resource:
`kubectl scale deployments/kubernetes-bootcamp --replicas=4`

For more info about these commands and learn some basics: https://kubernetes.io/docs/tutorials/kubernetes-basics/
Getting started with Kubernetes guide: https://theithollow.com/2019/01/26/getting-started-with-kubernetes/

# Tutorial

- Step 1:
  Create a manifest to start understanding Pods (https://theithollow.com/2019/01/21/kubernetes-pods/)
  https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  Deploy kubernet: `kubectl apply -f kube-manifest.yaml`
  `kubectl get pods`
  `kubectl describe pod [pod name]`
