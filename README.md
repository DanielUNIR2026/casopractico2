# Docu básica
## Estructura del proyecto
Esto es un readme para inicializar el repo
He estado trabajando en la rama develop para ir publicando el progreso del proyecto
Tengo un git ignore que añadí para evitar que se me cuelen los archivos de terraform

## 29/06/26
Añado un proyecto de buscaminas en Javascript para formar la versión de la imagen de Podman
## 11/07/26
Se consifue hacer un terraform plan -out  
Con un error en la admin password  
```
╷
│ Error: "admin_password" most be between 6 and 72 characters, got 4
│
│   with azurerm_linux_virtual_machine.vm,
│   on main.tf line 121, in resource "azurerm_linux_virtual_machine" "vm":
│  121:   admin_password      = var.admin_password
│
╵
╷
│ Error: "admin_password" has to fulfill 3 out of these 4 conditions: Has lower characters, Has upper characters, Has a digit, Has a special character other than "_", fullfiled only 1 conditions
│
│   with azurerm_linux_virtual_machine.vm,
│   on main.tf line 121, in resource "azurerm_linux_virtual_machine" "vm":
│  121:   admin_password      = var.admin_password
│
```