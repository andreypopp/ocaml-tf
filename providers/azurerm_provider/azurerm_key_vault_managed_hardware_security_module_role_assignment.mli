(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts

type azurerm_key_vault_managed_hardware_security_module_role_assignment

type t = private {
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_id : string prop;
  role_definition_id : string prop;
  scope : string prop;
  vault_base_url : string prop;
}

val azurerm_key_vault_managed_hardware_security_module_role_assignment :
  ?id:string prop ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts ->
  name:string prop ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  vault_base_url:string prop ->
  string ->
  t
