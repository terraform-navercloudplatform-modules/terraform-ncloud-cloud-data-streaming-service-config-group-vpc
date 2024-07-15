terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

provider "ncloud" {}

module "cloud-data-streaming-service-config-group-vpc" {
  source  = "terraform-navercloudplatform-modules/cloud-data-streaming-service-config-group-vpc/ncloud"
  version = "1.0.0"
  name = "sample-config-group"
  kafka_version_code = "2823006"
  description = "test"
}

module "cloud-data-streaming-service-config-group-vpc-02" {
  source  = "terraform-navercloudplatform-modules/cloud-data-streaming-service-config-group-vpc/ncloud"
  version = "1.0.0"
  name = "sample-config-group"
  kafka_version_code = "2823006"
}