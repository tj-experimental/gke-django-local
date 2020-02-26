# Helper make targets

CLUSTER_NAME := gcp-cloud-code

create-cluster:
	@gcloud container clusters create $(CLUSTER_NAME) --zone us-central1-c

update-kubeconfig:
	@gcloud container clusters get-credentials $(CLUSTER_NAME) --zone us-central1-c
