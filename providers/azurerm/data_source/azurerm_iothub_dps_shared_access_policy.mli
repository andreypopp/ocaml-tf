(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_iothub_dps_shared_access_policy

val azurerm_iothub_dps_shared_access_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  iothub_dps_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_dps_shared_access_policy

val yojson_of_azurerm_iothub_dps_shared_access_policy :
  azurerm_iothub_dps_shared_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  iothub_dps_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  iothub_dps_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  iothub_dps_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
