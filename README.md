# Deliverybot Helm Example

This is an example of deploying to Helm using GitHub actions.
[View the guide.](https://deliverybot.dev/docs/guides/kubernetes)

1. Click the "Use this template" button to create a new fork of this repository.

2. Install [deliverybot](https://github.com/apps/deliverybot) on the new repo.

3. Add a `KUBECONFIG` secret into the secrets tab.

4. Push a commit to your new fork and watch the example workflows kick off!

5. Visit the [deliverybot app](https://app.deliverybot.dev) and manually deploy.

Note: If you don't want to trigger a deployment using Deliverybot, you can do
this just with a curl command to the GitHub deployments api
https://developer.github.com/v3/repos/deployments/.

### Structure

```bash
config/                   # Contains value files per environment.
.github/workflows/cd.yml  # GitHub action workflow.
.github/deploy.yml        # Deliverybot configuration file.
```
