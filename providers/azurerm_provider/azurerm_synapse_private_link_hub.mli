(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_private_link_hub__timeouts
type azurerm_synapse_private_link_hub

val azurerm_synapse_private_link_hub :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_synapse_private_link_hub__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
