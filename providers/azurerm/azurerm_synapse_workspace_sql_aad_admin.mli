(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_workspace_sql_aad_admin

val azurerm_synapse_workspace_sql_aad_admin :
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  synapse_workspace_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_synapse_workspace_sql_aad_admin

val yojson_of_azurerm_synapse_workspace_sql_aad_admin :
  azurerm_synapse_workspace_sql_aad_admin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login:string prop ->
  object_id:string prop ->
  synapse_workspace_id:string prop ->
  tenant_id:string prop ->
  string ->
  t
