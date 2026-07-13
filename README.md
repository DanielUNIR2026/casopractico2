# Docu básica
## Estructura del proyecto
Esto es un readme para inicializar el repo
He estado trabajando en la rama develop para ir publicando el progreso del proyecto
Tengo un git ignore que añadí para evitar que se me cuelen los archivos de terraform

## 29/06/26
Añado un proyecto de buscaminas en Javascript para formar la versión de la imagen de Podman


## 07/07/26
Recreo la estructura del proyecto, con las carpetas necesarias, para el contenedor, la infra y la automatización de despligue de las 2 aplicaciones
Merge realizado el mismo día, de rama desarrollo a rama master

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


cd /ruta/a/terraform

# Inicializar
terraform init

# Verificar el plan (sin aplicar)
terraform plan -out=deployment.tf

# Ejecutar y pedirá password
terraform apply -auto-approve
# O en modo interactivo:
# terraform apply

# Cuando pida el password:
# Enter a value for var.admin_password: [tu_password_seguro]
```

```
╷
│ Error: `allocation_method` must be set to `Static` when `sku` is set to `Standard` or `StandardV2`
│ 
│   with azurerm_public_ip.pip,
│   on main.tf line 98, in resource "azurerm_public_ip" "pip":
│   98: resource "azurerm_public_ip" "pip" {
│ 
╵
╷
│ Error: creating Linux Virtual Machine (Subscription: "bf46e4a1-0d08-4a90-adde-8e112905c05e"
│ Resource Group Name: "rg-desarrolloTF"
│ Virtual Machine Name: "vm1"): performing CreateOrUpdate: unexpected status 404 (404 Not Found) with error: PlatformImageNotFound: The platform image 'OpenLogic:Debian:11:latest' is not available. Verify that all fields in the storage profile are correct. For more details about storage profile information, please refer to https://aka.ms/storageprofile
│ 
│   with azurerm_linux_virtual_machine.vm,
│   on main.tf line 115, in resource "azurerm_linux_virtual_machine" "vm":
│  115: resource "azurerm_linux_virtual_machine" "vm" {
│ 
```
### destroy test

```
╷
│ Error: deleting Network Interface (Subscription: "bf46e4a1-0d08-4a90-adde-8e112905c05e"
│ Resource Group Name: "rg-desarrolloTF"
│ Network Interface Name: "vnic"): performing Delete: unexpected status 400 (400 Bad Request) with error: NicReservedForAnotherVm: Nic(s) in request is reserved for another Virtual Machine for 180 seconds. Please provide another nic(s) or retry after 180 seconds. Reserved VM: /subscriptions/bf46e4a1-0d08-4a90-adde-8e112905c05e/resourceGroups/rg-desarrolloTF/providers/Microsoft.Compute/virtualMachines/vm1
│ 
│ 
```

## 07/07/26
Recreo la estructura del proyecto, con las carpetas necesarias, para el contenedor, la infra y la automatización de despligue de las 2 aplicaciones
Merge realizado el mismo día, de rama desarrollo a rama master

