(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_definition__permission

type azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts

type azurerm_key_vault_managed_hardware_security_module_role_definition

val azurerm_key_vault_managed_hardware_security_module_role_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?role_name:string prop ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  permission:
    azurerm_key_vault_managed_hardware_security_module_role_definition__permission
    list ->
  string ->
  unit
