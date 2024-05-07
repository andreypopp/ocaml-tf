(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_site_recovery_fabric

val azurerm_site_recovery_fabric :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_site_recovery_fabric

val yojson_of_azurerm_site_recovery_fabric :
  azurerm_site_recovery_fabric -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
