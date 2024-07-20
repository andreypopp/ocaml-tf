(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_management_group

val azurerm_management_group :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_management_group

val yojson_of_azurerm_management_group :
  azurerm_management_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  all_management_group_ids : string list prop;
  all_subscription_ids : string list prop;
  display_name : string prop;
  id : string prop;
  management_group_ids : string list prop;
  name : string prop;
  parent_management_group_id : string prop;
  subscription_ids : string list prop;
  tenant_scoped_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
