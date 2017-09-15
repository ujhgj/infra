# Infra
Это инфраструктурный репозиторий для курса Otus DevOps

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


    cd terraform/environment/prod; terraform plan
    cd terraform/environment/stage; terraform plan

