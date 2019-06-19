/**
# Terraform Datascience

This script can be used to deploy a datascientist setup on Microsoft Azure. It uses [terraform](https://www.terraform.io/downloads.html) to orchestrate the deployment.

## Deployed components 📦

* [Data Science VM](https://docs.microsoft.com/en-us/azure/machine-learning/data-science-virtual-machine/overview)
* [Azure File Share on Storage](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-introduction)

## Prerequisites
  - An Azure account
  - Terraform

  ## Further reading 📚

  * https://docs.microsoft.com/en-us/azure/storage/common/storage-azure-cli
  * https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-create-file-share#create-file-share-through-command-line-interface-cli
  * https://docs.microsoft.com/de-de/rest/api/storageservices/Constructing-an-Account-SAS?redirectedfrom=MSDN
  * https://github.com/Azure/azure-quickstart-templates/issues/1444

## Documentation generation
Documentation should be modified within `main.tf` and generated using [terraform-docs](https://github.com/segmentio/terraform-docs):

```bash
terraform-docs md ./ |sed '$d' >| README.md
```

## License
GPL 3.0 Licensed. See [LICENSE](LICENSE) for full details.
*/

terraform {
  required_version = ">= 0.12"
}

provider "null" {}
provider "template" {}
