(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_workspace_key

val azurerm_synapse_workspace_key :
  ?customer_managed_key_versionless_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  active:bool prop ->
  customer_managed_key_name:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_workspace_key

val yojson_of_azurerm_synapse_workspace_key :
  azurerm_synapse_workspace_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop;
  id : string prop;
  synapse_workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_managed_key_versionless_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  active:bool prop ->
  customer_managed_key_name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?customer_managed_key_versionless_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  active:bool prop ->
  customer_managed_key_name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource
