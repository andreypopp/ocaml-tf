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

type azurerm_synapse_integration_runtime_azure

val azurerm_synapse_integration_runtime_azure :
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_integration_runtime_azure

val yojson_of_azurerm_synapse_integration_runtime_azure :
  azurerm_synapse_integration_runtime_azure -> json

(** RESOURCE REGISTRATION *)

type t = private {
  compute_type : string prop;
  core_count : float prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  synapse_workspace_id : string prop;
  time_to_live_min : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource
