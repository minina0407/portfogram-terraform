# PortfoGram-Terraform

## Overview
이 프로젝트는 Terraform을 사용하여 PortfoGram 애플리케이션의 인프라를 설정합니다.
여기에는 Google Kubernetes Engine (GKE) 및 네트워킹 모듈이 포함됩니다.

## Requirements
- Terraform >= 0.12
- Google Cloud SDK
- 필요한 권한을 가진 서비스 계정

## Providers
- `google` (Google Cloud Platform)

## Modules
### Compute
- [GKE](modules/compute/gke/README.md) : GKE 클러스터를 설정합니다.  [GKE 모듈 README](modules/compute/gke/README.md)를 참조하세요.

### Network
- [Network](modules/network/README.md): VPC, 서브넷 및 관련 네트워크 구성 요소를 설정합니다.
  [Network 모듈 README](modules/network/README.md)를 참조하세요.

## Resources
No resources defined in the root module.

## Inputs
No inputs defined in the root module.

## Outputs
No outputs defined in the root module.


## Usage
### Set up the environment

1. 필요한 소프트웨어 설치 :
    - [Terraform](https://www.terraform.io/downloads.html)
    - [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
2. Google Cloud에 인증 :
   ```sh
   gcloud auth login
   gcloud auth application-default login
   
3. 서비스 계정을 설정 :
    ```sh
    export GOOGLE_APPLICATION_CREDENTIALS="path/to/your/service-account-file.json"

### Initialize and apply the configuration
1. 원하는 환경 디렉토리로 이동합니다 (env/dev 또는 env/prod):
    ```sh
    cd env/dev
2. Terraform을 초기화합니다
      ```sh
     terraform init
3. 변경사항을 계획 : 
      ```sh
     terraform plan -var-file="terraform.tfvars" 
4. 변경사항을 적용 :
      ```sh
     terraform apply -var-file="terraform.tfvars" 