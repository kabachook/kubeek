# kubeek
Some scripts to bootstrap a kubernetes cluster

## Quick start

- Install [terrafform-inventory](https://github.com/adammck/terraform-inventory)
- Create instances

    ```bash
    cd terraform
    terraform init
    terraform plan
    terraform apply
    ```

- Deploy kubernetes

    ```bash
    cd ansible
    TF_STATE=../terraform/. ansible-playbook -i $(which terraform-inventory) -u root deploy.yaml
    ```