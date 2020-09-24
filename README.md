## OAuth Chart

An example chart for deploying a oAuth on Openshift



Creating new release

```
git checkout release
helm package .
mv  oauth-chart*.tgz release/
checkout release
git repo index --url https://jland-redhat.github.io/oauth-helm-chart/
```
