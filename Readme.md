## Kubernetes basics - Getting started

Tutorial to get started with some `kubectl` commands and a `kube-manifest.yaml` to create and manage a single-node cluster using docker-for-desktop for Kubernetes integrated with Docker for Mac version with Engine: 19.03.4 and Kubernetes: v1.14.7 at release time of this project.

# Kubernetes

- Deploy a new Docker stack (default orchestrator is Kubernetes): `docker stack deploy -c docker-compose.yaml nginx`
- Stop stack `docker stack rm nginx`

- Kubernetes version: `kubectl version`

- Config view: `kubectl config view`

- Get config contexts: `kubectl config get-contexts`

- Set a config context (e.g. docker-for-desktop): `kubectl config use-context docker-for-desktop`

- Get cluster information: `kubectl cluster-info`

- View nodes in the cluster: `kubectl get nodes`

- Get deployments: `kubectl get deployments`

- Get pods: `kubectl get pods`

- Enables direct access to the API with proxy: `kubectl proxy`

- The most common operations can be done with the following `kubectl` commands:

  `kubectl get <resource>` - list resources

  `kubectl describe <resource>` - show detailed information about a resource

  `kubectl logs <pod_name|type/name>` - print the logs from a container in a pod

  `kubectl exec <pod_name> <command>` - execute a command on a container in a pod

- Example to scale up a Deployment resource:

  `kubectl scale deployments/kubernetes-bootcamp --replicas=4`

For more info about these commands and learn some basics: https://kubernetes.io/docs/tutorials/kubernetes-basics/
Getting started with Kubernetes guide: https://theithollow.com/2019/01/26/getting-started-with-kubernetes/

# Kubectl cheatsheet

https://kubernetes.io/docs/reference/kubectl/cheatsheet/

# kubectl commands

https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands

# Tutorial

- PODS - Step 1:
  Create a manifest to start understanding Pods as a single unit (https://theithollow.com/2019/01/21/kubernetes-pods/)

  POD docs: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/

  - Deploy kubernete: `kubectl apply -f kube-manifest.yaml`

  - Delete kubernete resource: `kubectl delete -f kube-manifest.yaml`

  `kubectl get pods`

  `kubectl describe pod [pod name]` or `kubectl get pods [pod-name] -o yaml` to get the ouput in yaml format

- Deployment - Step 2:
  Deploy a Replica Set for replicating Pods (https://theithollow.com/2019/01/28/kubernetes-replica-sets/)

  Replica set docs: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/

  `kubectl delete po [pod name] &`

  Run `kubectl get pods` to see the state of replicating during the POD deleting

- Replica Set - Step 3:
  Deployment object construct a level above replica sets and actually manage the replica set objects (https://theithollow.com/2019/01/30/kubernetes-deployments/)

  Deployment docs: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

  Deploy update on deployment object: `kubectl apply -f kube-update-deployment.yaml`

  `kubectl get po; kubectl get deploy`

  For larger updates better keep tracking with `kubectl rollout status deployment [deployment name]`

  We can remove the update running `kubectl delete -f kube-update-deployment.yaml`

- Services and Labels - Step 4:
  Deploy Service object to front-end Pods (https://theithollow.com/2019/01/31/kubernetes-services-and-labels/)

  Services docs: https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service

  `kubectl get services`

  `kubectl get pods -o wide`

  Given the declaration that `nodePort: 30001` we can access our nginx server at http://localhost:30001

- Endpoints and External services - Step 5:
  Verify and create external endpoint service (https://theithollow.com/2019/02/04/kubernetes-endpoints/)

  Endpoint docs: https://kubernetes.io/docs/concepts/services-networking/endpoint-slices/

  `kubectl get endpoints`
