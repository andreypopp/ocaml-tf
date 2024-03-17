(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_routing_intent__routing_policy
type azurerm_virtual_hub_routing_intent__timeouts
type azurerm_virtual_hub_routing_intent

val azurerm_virtual_hub_routing_intent :
  ?id:string ->
  ?timeouts:azurerm_virtual_hub_routing_intent__timeouts ->
  name:string ->
  virtual_hub_id:string ->
  routing_policy:
    azurerm_virtual_hub_routing_intent__routing_policy list ->
  string ->
  unit
