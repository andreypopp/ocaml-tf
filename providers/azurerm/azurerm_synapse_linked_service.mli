(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type integration_runtime

val integration_runtime :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  integration_runtime

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_linked_service

val azurerm_synapse_linked_service :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  unit ->
  azurerm_synapse_linked_service

val yojson_of_azurerm_synapse_linked_service :
  azurerm_synapse_linked_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  synapse_workspace_id : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  string ->
  t Tf_core.resource
