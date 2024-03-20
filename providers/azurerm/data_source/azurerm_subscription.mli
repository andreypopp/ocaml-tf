(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_subscription

val azurerm_subscription :
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_subscription

val yojson_of_azurerm_subscription : azurerm_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  location_placement_id : string prop;
  quota_id : string prop;
  spending_limit : string prop;
  state : string prop;
  subscription_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
