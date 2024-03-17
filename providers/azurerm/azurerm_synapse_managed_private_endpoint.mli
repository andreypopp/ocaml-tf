(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_managed_private_endpoint__timeouts
type azurerm_synapse_managed_private_endpoint

type t = private {
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  synapse_workspace_id : string prop;
  target_resource_id : string prop;
}

val azurerm_synapse_managed_private_endpoint :
  ?id:string prop ->
  ?timeouts:azurerm_synapse_managed_private_endpoint__timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  synapse_workspace_id:string prop ->
  target_resource_id:string prop ->
  string ->
  t
