set -e

CLUSTER=$1
REGION=$2
PROJECT=$3

echo "Activating Service Account"
gcloud auth activate-service-account --key-file=/tmp/account.json

echo "Connecting to the cluster"
gcloud container clusters get-credentials $CLUSTER --region $REGION --project $PROJECT

echo "Listing the pods"
kubectl get pods

echo "Ready for listing logs"
/bin/bash