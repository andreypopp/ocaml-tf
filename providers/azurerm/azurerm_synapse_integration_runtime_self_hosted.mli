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

type azurerm_synapse_integration_runtime_self_hosted

val azurerm_synapse_integration_runtime_self_hosted :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_integration_runtime_self_hosted

val yojson_of_azurerm_synapse_integration_runtime_self_hosted :
  azurerm_synapse_integration_runtime_self_hosted -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_key_primary : string prop;
  authorization_key_secondary : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  synapse_workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource
