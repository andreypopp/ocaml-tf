(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_managed_hardware_security_module_role_assignment

val azurerm_key_vault_managed_hardware_security_module_role_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  vault_base_url:string prop ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module_role_assignment

val yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment :
  azurerm_key_vault_managed_hardware_security_module_role_assignment ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_id : string prop;
  role_definition_id : string prop;
  scope : string prop;
  vault_base_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  vault_base_url:string prop ->
  string ->
  t
