(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_linked_service__integration_runtime
type azurerm_synapse_linked_service__timeouts
type azurerm_synapse_linked_service

val azurerm_synapse_linked_service :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_synapse_linked_service__timeouts ->
  name:string ->
  synapse_workspace_id:string ->
  type_:string ->
  type_properties_json:string ->
  integration_runtime:
    azurerm_synapse_linked_service__integration_runtime list ->
  string ->
  unit
