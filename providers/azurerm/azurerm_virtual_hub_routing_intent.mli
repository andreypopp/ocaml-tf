(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type routing_policy

val routing_policy :
  destinations:string prop list ->
  name:string prop ->
  next_hop:string prop ->
  unit ->
  routing_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_hub_routing_intent

val azurerm_virtual_hub_routing_intent :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  routing_policy:routing_policy list ->
  unit ->
  azurerm_virtual_hub_routing_intent

val yojson_of_azurerm_virtual_hub_routing_intent :
  azurerm_virtual_hub_routing_intent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  routing_policy:routing_policy list ->
  string ->
  t
