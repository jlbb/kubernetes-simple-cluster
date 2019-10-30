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

# Kubectl cheatsheet

https://kubernetes.io/docs/reference/kubectl/cheatsheet/

# Tutorial

- Step 1:
  Create a manifest to start understanding Pods (https://theithollow.com/2019/01/21/kubernetes-pods/)
  https://kubernetes.io/docs/concepts/workloads/pods/init-containers/

  Deploy kubernete: `kubectl apply -f kube-manifest.yaml`
  Delete kubernete resource: `kubectl apply -f kube-manifest.yaml`

  `kubectl get pods`
  `kubectl describe pod [pod name]` or `kubectl get pods [pod-name] -o yaml` to get the ouput in yaml format

- Step 2:
  Deploy a replica Set for replicating Pods (https://theithollow.com/2019/01/28/kubernetes-replica-sets/)
  https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/

  `kubectl delete po [pod name] &`

  Run `kubectl get pods` to see the state of replicating during the POD deleting
