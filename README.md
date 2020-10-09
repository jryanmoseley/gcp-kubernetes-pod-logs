# gcp-kubernetes-pod-logs

Docker tool to get logs from a kubernetes pod in GCP

## Prerequisites

- Service Account in GCP that has permissions to view logs
- Credential file for the Service Account
- Docker

## How to use

Run the following commands to build and run the docker container

```bash
## build the gcp-kubernetes-pod-logs docker image
docker build -t gcp-kubernetes-pod-logs -f Dockerfile .

## run - this will connect to the cluster and list the pods which can then be used to get the logs
docker run -it \
    -v "<path_to_credential_file>:/tmp/account.json" \
    gcp-kubernetes-pod-logs \
    <cluster_name> \
    <region> \
    <project_id>

## example
docker run -it \
    -v "/.gcp/credentials/gcp-sa-key.json:/tmp/account.json" \
    gcp-kubernetes-pod-logs \
    my-gcp-cluster-1 \
    us-west1 \
    my-gcp-project-id

## list logs - to exit type "exit"
kubectl logs <pod-name>

## tail logs - to exit hit "ctrl+c" then type "exit"
kubectl logs --follow <pod-name>
```
