## OAuth Chart

An example chart for deploying a oAuth on Openshift



## Creating new release

```
git checkout release
helm package .
mv  oauth-chart*.tgz release/
checkout release
helm repo index --url https://jaland.github.io/oauth-helm-chart/ .
```




## Testing chart

### Add helm repo
```
helm repo add oauth https://jaland.github.io/oauth-helm-chart/
helm repo list
```

### Deploy chart
```
helm install oauth/oauth-chart --name=oauth
```