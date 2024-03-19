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

type azurerm_synapse_sql_pool_workload_classifier

val azurerm_synapse_sql_pool_workload_classifier :
  ?context:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?importance:string prop ->
  ?label:string prop ->
  ?start_time:string prop ->
  ?timeouts:timeouts ->
  member_name:string prop ->
  name:string prop ->
  workload_group_id:string prop ->
  unit ->
  azurerm_synapse_sql_pool_workload_classifier

val yojson_of_azurerm_synapse_sql_pool_workload_classifier :
  azurerm_synapse_sql_pool_workload_classifier -> json

(** RESOURCE REGISTRATION *)

type t = private {
  context : string prop;
  end_time : string prop;
  id : string prop;
  importance : string prop;
  label : string prop;
  member_name : string prop;
  name : string prop;
  start_time : string prop;
  workload_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?importance:string prop ->
  ?label:string prop ->
  ?start_time:string prop ->
  ?timeouts:timeouts ->
  member_name:string prop ->
  name:string prop ->
  workload_group_id:string prop ->
  string ->
  t
