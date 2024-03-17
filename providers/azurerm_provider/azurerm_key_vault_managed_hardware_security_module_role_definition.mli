(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_definition__permission

type azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts

type azurerm_key_vault_managed_hardware_security_module_role_definition

val azurerm_key_vault_managed_hardware_security_module_role_definition :
  ?description:string ->
  ?role_name:string ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts ->
  name:string ->
  vault_base_url:string ->
  permission:
    azurerm_key_vault_managed_hardware_security_module_role_definition__permission
    list ->
  string ->
  unit
