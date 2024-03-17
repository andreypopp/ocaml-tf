(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_integration_runtime_azure__timeouts
type azurerm_synapse_integration_runtime_azure

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

val azurerm_synapse_integration_runtime_azure :
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?timeouts:azurerm_synapse_integration_runtime_azure__timeouts ->
  location:string prop ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
