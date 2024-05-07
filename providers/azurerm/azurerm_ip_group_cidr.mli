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

type azurerm_ip_group_cidr

val azurerm_ip_group_cidr :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  ip_group_id:string prop ->
  unit ->
  azurerm_ip_group_cidr

val yojson_of_azurerm_ip_group_cidr : azurerm_ip_group_cidr -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr : string prop;
  id : string prop;
  ip_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  ip_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  ip_group_id:string prop ->
  string ->
  t Tf_core.resource
