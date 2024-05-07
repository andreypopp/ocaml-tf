(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_healthcare_medtech_service

val azurerm_healthcare_medtech_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  device_mapping_json:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_name:string prop ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_healthcare_medtech_service

val yojson_of_azurerm_healthcare_medtech_service :
  azurerm_healthcare_medtech_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  device_mapping_json:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_name:string prop ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  device_mapping_json:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_name:string prop ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
