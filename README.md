# Infra
Это инфраструктурный репозиторий для курса Otus DevOps

Команда для сборки Base образа:
packer build \
    -var 'project_id=...' \
    -var 'source_image=ubuntu-1604-xenial-v20170815a' \
    packer/ubuntu16.json

Команда для сборки Immutable образа:
packer build \
    -var 'project_id=...' \
    -var 'source_image=reddit-base-...' \
    packer/immutable.json

Команда для запуска приложения из Immutable образа:
gcloud compute instances create ... \
    --boot-disk-size=10GB \
    --image=reddit-immutable-... \
    --machine-type=g1-small \
    --tags puma-server \
    --restart-on-failure \
    --zone=europe-west1-b
