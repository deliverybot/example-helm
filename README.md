# Deliverybot Helm Example

This is an example of deploying to Helm using GitHub actions.
[View the guide.](https://deliverybot.dev/docs/integrations/action-helm/)

1. Click the "Use this template" button to create a new fork of this repository.

2. Install [deliverybot](https://github.com/apps/deliverybot) on the new repo.

3. Follow the [Kubernetes setup](#kubernetes-setup) guide below.

5. Push a commit to your new fork and watch the example workflows kick off!

6. Visit the [deliverybot app](https://app.deliverybot.dev) and manually deploy.

Note: If you don't want to trigger a deployment using Deliverybot, you can do
this just with a curl command to the GitHub deployments api
https://developer.github.com/v3/repos/deployments/.

### Kubernetes setup

1. Get yourself a Kubernetes cluster either using Google cloud or another
   provider. [Google cloud instructions](https://cloud.google.com/kubernetes-engine/docs/quickstart).

2. Create a service account for GitHub actions to have access to your cluster.
   [Follow this gist](https://gist.github.com/innovia/fbba8259042f71db98ea8d4ad19bd708).

3. Copy the created service account into your GitHub repository secrets with the
   name `KUBECONFIG`.

4. Now we can create the `example-helm` namespace in Kubernetes with:

```
kubectl create ns example-helm
```

### Structure

```bash
config/                   # Contains value files per environment.
.github/workflows/cd.yml  # GitHub action workflow.
.github/deploy.yml        # Deliverybot configuration file.
```
