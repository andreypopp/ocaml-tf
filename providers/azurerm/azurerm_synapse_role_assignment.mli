(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_synapse_role_assignment

val azurerm_synapse_role_assignment :
  ?id:string prop ->
  ?principal_type:string prop ->
  ?synapse_spark_pool_id:string prop ->
  ?synapse_workspace_id:string prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  role_name:string prop ->
  unit ->
  azurerm_synapse_role_assignment

val yojson_of_azurerm_synapse_role_assignment :
  azurerm_synapse_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_name : string prop;
  synapse_spark_pool_id : string prop;
  synapse_workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?principal_type:string prop ->
  ?synapse_spark_pool_id:string prop ->
  ?synapse_workspace_id:string prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  role_name:string prop ->
  string ->
  t
