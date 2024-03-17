(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts

type azurerm_key_vault_managed_hardware_security_module_role_assignment

val azurerm_key_vault_managed_hardware_security_module_role_assignment :
  ?id:string ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts ->
  name:string ->
  principal_id:string ->
  role_definition_id:string ->
  scope:string ->
  vault_base_url:string ->
  string ->
  unit
