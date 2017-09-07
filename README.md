# Infra
Это инфраструктурный репозиторий для курса Otus DevOps

Команда для запуска приложения из Immutable образа:
gcloud compute instances create reddit-immutable-XXX \
    --boot-disk-size=10GB \
    --image=reddit-immutable-1504789403 \
    --machine-type=g1-small \
    --tags puma-server \
    --restart-on-failure \
    --zone=europe-west1-b \
    --metadata-from-file startup-script=packer/scripts/run_reddit.sh