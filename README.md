# jenkins-kubernetes
jenkins kubernetes + google Oauth2 login + configuration as code

on this jenkins setup we have ingress manifest example. 
to create auto generated letsencrypt for ssl with cert-manager you can follow [here](https://dev.to/chrisme/setting-up-nginx-ingress-w-automatically-generated-letsencrypt-certificates-on-kubernetes-4f1k)

### Prerequisites

required :

```
google Oauth2
kubectl
```

### Installing

clone this project

```
git clone https://github.com/sidiqputra/jenkins-kubernetes.git
cd jenkins-kubernetes
```
change the config as your own

```
file : jenkins_casc/jenkins-casc-secret.yaml
google clientid and google secret must be in base64 encode as we put that in kubernetes secret

"<YOUR GOOGLE CLIENTID> | BASE64"
"<YOUR GOOGLE SECRET> | BASE64"

```

```
file : jenkins_casc/jenkins-casc-configmap.yaml

"<KUBERNETES URL>"
"<YOUR EMAIL>"
"<YOUR DOMAIN>"
```

```
file : jenkins-ingress.yaml

"<YOUR DOMAIN>"
```

install

```
sh install.sh
```

to cleanup all the setting you can run cleanup.sh

```
sh cleanup.sh
```

## Authors

* **sidiqputra** - [sidiqputra](https://github.com/sidiqputra)

## REFERENCE

* [Jenkins Configuration As Code](https://github.com/jenkinsci/configuration-as-code-plugin)
* [Helm](https://helm.sh/docs/topics/charts/)

