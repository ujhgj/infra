# Infra
Это инфраструктурный репозиторий для курса `Otus DevOps`

### Packer
   
Сборка app-server`a:

    packer build \
        -var 'project_id=infra-180010' \
        -var 'source_image=ubuntu-1604-xenial-v20170815a' \
        packer/app.json
    
Сборка db-server`a:

    packer build \
        -var 'project_id=infra-180010' \
        -var 'source_image=ubuntu-1604-xenial-v20170815a' \
        packer/db.json

### Terraform

Для интересующего окружения скопировать файлы backend.tf.example и terraform.tfvars.example и указать свои данные.
Потребуется заранее создать соответствующий бэкенд (например, GCS).

    cd terraform/environment/[stage|prod]
    cp backend.tf.example backend.tf
    vi backend.tf               # указать свои данные
    terraform init
    cp terraform.tfvars.example terraform.tfvars
    vi terraform.tfvars         # указать свои данные

В рамках эксплуатации для `prod` окружения будет запрашиваться список диапазонов IP-адресов, для которых будет открыт доступ на виртуальные машины по SSH.
