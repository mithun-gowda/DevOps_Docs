ami = "ami-053b0d53c279acc90"
instance_type = "t2.medium"  #this is requirement for production environment 
#above instance type should be changed everytime when requirement comes.
#for prod, dev, test environment we have to come here and change the value and it is not good practice. Thing should be automated 

# If there are multiple environment present like dev, prod, test etc then the value will be different and using terraform workspace method you can achieve the issue in statefile.


# Solution :

# For each environment the var file should be different example:

# dev.tfvars -----> when you to apply in terraform  

# ----> terraform apply -var-file=dev.tfvars
# ----> terraform apply -var-file=dev.tfvars
# ----> terraform apply -var-file=prod.tfvars

