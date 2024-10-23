virginia:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform apply -var-file virginia.tfvars -auto-approve


ohio:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform apply -var-file ohio.tfvars -auto-approve

california:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform apply -var-file california.tfvars -auto-approve

origon:
	terraform workspace new origon || terraform workspace select ohio
	terraform init
	terraform apply -var-file origon.tfvars -auto-approve

apply-all: virginia ohio california oregon

virginia-d:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform destroy -var-file virginia.tfvars -auto-approve


ohio-d:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform destroy -var-file ohio.tfvars -auto-approve

california-d:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform destroy -var-file california.tfvars -auto-approve

origon-d:
	terraform workspace new origon || terraform workspace select ohio
	terraform init
	terraform destroy -var-file origon.tfvars -auto-approve

destroy-all: virginia-d ohio-d california-d oregon-d