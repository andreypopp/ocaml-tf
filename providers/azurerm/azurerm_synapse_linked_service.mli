(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type integration_runtime

val integration_runtime :
  ?parameters:(string * string prop) list ->
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
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  integration_runtime:integration_runtime list ->
  unit ->
  azurerm_synapse_linked_service

val yojson_of_azurerm_synapse_linked_service :
  azurerm_synapse_linked_service -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  integration_runtime:integration_runtime list ->
  string ->
  t
