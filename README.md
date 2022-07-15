**This is for Terraform Cloud Practice**  

Terraform file/code created in this repository will trigger a plan in Terraform Cloud Workspace. 
Terraform Cloud [hardikip] Cred - h******ip@yahoo.com 


Other IaC Tool Combination: 
1) #terraform
2) #terragrunt
3) #brainboard
4) #infracost


**Complext Question for Terraform certificate:**
1. Question:
When using providers that require the retrieval of data, such as the HashiCorp Vault provider, in what phase does Terraform actually retrieve the data required, assuming you are following the standard workflow of write, plan, and apply?

Ans - terraform plan

**Explanation**  
It is important to consider that Terraform reads from data sources during the plan phase and writes the result into the plan. For something like a Vault token which has an explicit TTL, the apply must be run before the data, or token, in this case, expires, otherwise, Terraform will fail during the apply phase.

***Another example of this is AWS credentials:***

*The token is generated from the moment the configuration retrieves the temporary AWS credentials (on terraform plan or terraform apply). If the apply run is confirmed after the 120 seconds, the run will fail because the credentials used to initialize the Terraform AWS provider has expired. For these instances or large multi-resource configurations, you may need to adjust the default_lease_ttl_seconds.*

Check out the blue box under this section for more information: https://learn.hashicorp.com/tutorials/terraform/secrets-vault#provision-compute-instance


**Terraform Auto Complete:**  
terraform -install-auto-complete  
or  
install plugins from VSCode (or any IDE) for terraform by Hashicorp.com
