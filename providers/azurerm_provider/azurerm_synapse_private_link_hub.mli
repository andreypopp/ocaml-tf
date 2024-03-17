(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_private_link_hub__timeouts
type azurerm_synapse_private_link_hub

val azurerm_synapse_private_link_hub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_synapse_private_link_hub__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
