resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}
variable "parameters" {
  default = [
#    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
#    {name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String"},
#    {name = "prod.expense.frontend.backend_url", value = "http://backend-prod.mkdevops.online/", type = "String"},
#    {name = "prod.rds.endpoint", value = "prod-mysql.cluster-cshnthuj0kj8.us-east-1.rds.amazonaws.com", type = "String"},

    ##Dev env
#    {name = "dev.expense.frontend.backend_url", value = "http://backend-dev.mkdevops.online/", type = "String"},

    ##common env
    {name = "jenkins_password", value = "admin123", type = "String"},


    ##Roboshop Dev env Parameters
    {name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.mkdevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.mkdevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.user_url", value = "http://user-dev.mkdevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.mkdevops.online:8080/", type = "String"},
    {name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.mkdevops.online:8080/", type = "String"},
  ]
}

## Note: Ideally we dont keep passwords in GIT REPOS, Those will be created manually. Secret management of creating secrets is most of the time is manual

