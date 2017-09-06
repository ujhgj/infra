# Infra
Это инфраструктурный репозиторий для курса Otus DevOps

Для создания инстанца с развёрнутым и запущенным приложением достаточно выполнить команду:
gcloud compute instances create reddit-app \
  --boot-disk-size=10GB \
  --image=ubuntu-1604-xenial-v20170815a \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --zone=europe-west1-b \
  --metadata-from-file startup-script=./startup_script.sh