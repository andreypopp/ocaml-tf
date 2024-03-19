(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_synapse_managed_private_endpoint

val azurerm_synapse_managed_private_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  synapse_workspace_id:string prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_synapse_managed_private_endpoint

val yojson_of_azurerm_synapse_managed_private_endpoint :
  azurerm_synapse_managed_private_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  synapse_workspace_id : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  synapse_workspace_id:string prop ->
  target_resource_id:string prop ->
  string ->
  t
