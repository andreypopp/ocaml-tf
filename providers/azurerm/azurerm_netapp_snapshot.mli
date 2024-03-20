(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_netapp_snapshot

val azurerm_netapp_snapshot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  volume_name:string prop ->
  unit ->
  azurerm_netapp_snapshot

val yojson_of_azurerm_netapp_snapshot :
  azurerm_netapp_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  volume_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  volume_name:string prop ->
  string ->
  t Tf_core.resource
