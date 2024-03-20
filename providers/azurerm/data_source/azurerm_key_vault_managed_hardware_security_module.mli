(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_managed_hardware_security_module

val azurerm_key_vault_managed_hardware_security_module :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module

val yojson_of_azurerm_key_vault_managed_hardware_security_module :
  azurerm_key_vault_managed_hardware_security_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_object_ids : string list prop;
  hsm_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
