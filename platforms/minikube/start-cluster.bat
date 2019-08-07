
set NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.99.1/24,192.168.39.0/24

minikube start --memory=16384 --cpus=6^
  --docker-env HTTP_PROXY=%HTTP_PROXY%^
  --docker-env HTTPS_PROXY=%HTTPS_PROXY%^
  --docker-env NO_PROXY=%NO_PROXY%^
  --disk-size 40g^
  --extra-config apiserver.enable-admission-plugins="LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"