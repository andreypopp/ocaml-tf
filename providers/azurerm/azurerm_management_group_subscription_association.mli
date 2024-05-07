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

type azurerm_management_group_subscription_association

val azurerm_management_group_subscription_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  subscription_id:string prop ->
  unit ->
  azurerm_management_group_subscription_association

val yojson_of_azurerm_management_group_subscription_association :
  azurerm_management_group_subscription_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  management_group_id : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  subscription_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  subscription_id:string prop ->
  string ->
  t Tf_core.resource
