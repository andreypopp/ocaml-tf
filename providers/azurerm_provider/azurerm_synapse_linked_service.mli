(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_linked_service__integration_runtime
type azurerm_synapse_linked_service__timeouts
type azurerm_synapse_linked_service

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  synapse_workspace_id : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

val azurerm_synapse_linked_service :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_synapse_linked_service__timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  integration_runtime:
    azurerm_synapse_linked_service__integration_runtime list ->
  string ->
  t
