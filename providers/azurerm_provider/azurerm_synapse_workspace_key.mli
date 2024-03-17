(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_key__timeouts
type azurerm_synapse_workspace_key

type t = private {
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop;
  id : string prop;
  synapse_workspace_id : string prop;
}

val azurerm_synapse_workspace_key :
  ?customer_managed_key_versionless_id:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_synapse_workspace_key__timeouts ->
  active:bool prop ->
  customer_managed_key_name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
