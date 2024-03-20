(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permission = {
  actions : string prop list;  (** actions *)
  data_actions : string prop list;  (** data_actions *)
  not_actions : string prop list;  (** not_actions *)
  not_data_actions : string prop list;  (** not_data_actions *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_managed_hardware_security_module_role_definition

val azurerm_key_vault_managed_hardware_security_module_role_definition :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module_role_definition

val yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition :
  azurerm_key_vault_managed_hardware_security_module_role_definition ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permission : permission list prop;
  resource_manager_id : string prop;
  role_name : string prop;
  role_type : string prop;
  vault_base_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_base_url:string prop ->
  string ->
  t Tf_core.resource
