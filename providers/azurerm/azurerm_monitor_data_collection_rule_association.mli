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

type azurerm_monitor_data_collection_rule_association

val azurerm_monitor_data_collection_rule_association :
  ?data_collection_endpoint_id:string prop ->
  ?data_collection_rule_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  target_resource_id:string prop ->
  unit ->
  azurerm_monitor_data_collection_rule_association

val yojson_of_azurerm_monitor_data_collection_rule_association :
  azurerm_monitor_data_collection_rule_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_collection_endpoint_id : string prop;
  data_collection_rule_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_collection_endpoint_id:string prop ->
  ?data_collection_rule_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  target_resource_id:string prop ->
  string ->
  t

val make :
  ?data_collection_endpoint_id:string prop ->
  ?data_collection_rule_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  target_resource_id:string prop ->
  string ->
  t Tf_core.resource
