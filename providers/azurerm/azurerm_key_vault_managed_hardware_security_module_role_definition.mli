(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permission

val permission :
  ?actions:string prop list ->
  ?data_actions:string prop list ->
  ?not_actions:string prop list ->
  ?not_data_actions:string prop list ->
  unit ->
  permission

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_managed_hardware_security_module_role_definition

val azurerm_key_vault_managed_hardware_security_module_role_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?role_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  permission:permission list ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module_role_definition

val yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition :
  azurerm_key_vault_managed_hardware_security_module_role_definition ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  permission:permission list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?role_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  permission:permission list ->
  string ->
  t Tf_core.resource
