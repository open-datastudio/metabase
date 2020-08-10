# Metabase on staroid

Deploy your own [metabase](https://github.com/metabase/metabase) server on [staroid](https://staroid.com).

- Configurable instance (CPU/Mem)
- Configured with Postgresql DB
- Connect to database in your private network through secure tunnel
- File manager to manage plugin directory

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)

## How to use

   1. Click 'Run on Staroid' button and launch an instance
   2. Once instance is created, click 'Open' button
   3. Optionally, switch to "Public access" to allow public access to the instance

## Run locally using skaffold with minikube

 - Install [skaffold](https://skaffold.dev)
 - Install [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

```
skaffold dev -f skaffold.yaml --port-forward -p minikube
```

Browse

 - localhost:3000 - metabase
 - localhost:8000 - file browser
