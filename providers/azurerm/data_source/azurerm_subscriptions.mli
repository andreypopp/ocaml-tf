(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subscriptions = {
  display_name : string prop;  (** display_name *)
  id : string prop;  (** id *)
  location_placement_id : string prop;  (** location_placement_id *)
  quota_id : string prop;  (** quota_id *)
  spending_limit : string prop;  (** spending_limit *)
  state : string prop;  (** state *)
  subscription_id : string prop;  (** subscription_id *)
  tags : (string * string prop) list;  (** tags *)
  tenant_id : string prop;  (** tenant_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_subscriptions

val azurerm_subscriptions :
  ?display_name_contains:string prop ->
  ?display_name_prefix:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_subscriptions

val yojson_of_azurerm_subscriptions : azurerm_subscriptions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name_contains : string prop;
  display_name_prefix : string prop;
  id : string prop;
  subscriptions : subscriptions list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name_contains:string prop ->
  ?display_name_prefix:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?display_name_contains:string prop ->
  ?display_name_prefix:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
