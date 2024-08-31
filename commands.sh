git clone git@github.com:cocvu99/az-devops-test-temporary.git
cd az-devops-test-temporary
make setup
source .az-devops-test-temporary
make all
az webapp up -n cocvu-up-prj2 -g Azuredevops --sku FREE