git clone git@github.com:tranhnguyen058/azuredevops-using-microsoft-azure2.git
cd azuredevops2-using-microsoft-azure2
make setup
source .azuredevops2-using-microsoft-azure2
make all
az webapp up -n tranhng05821-test-2 -g Azuredevops --sku FREE