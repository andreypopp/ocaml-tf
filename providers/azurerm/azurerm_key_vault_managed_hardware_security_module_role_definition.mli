(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_definition__permission

type azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts

type azurerm_key_vault_managed_hardware_security_module_role_definition

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

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
  t
