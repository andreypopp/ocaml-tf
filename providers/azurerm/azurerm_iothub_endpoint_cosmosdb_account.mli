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

type azurerm_iothub_endpoint_cosmosdb_account

val azurerm_iothub_endpoint_cosmosdb_account :
  ?authentication_type:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?partition_key_name:string prop ->
  ?partition_key_template:string prop ->
  ?primary_key:string prop ->
  ?secondary_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  database_name:string prop ->
  endpoint_uri:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_endpoint_cosmosdb_account

val yojson_of_azurerm_iothub_endpoint_cosmosdb_account :
  azurerm_iothub_endpoint_cosmosdb_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authentication_type : string prop;
  container_name : string prop;
  database_name : string prop;
  endpoint_uri : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  partition_key_name : string prop;
  partition_key_template : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_type:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?partition_key_name:string prop ->
  ?partition_key_template:string prop ->
  ?primary_key:string prop ->
  ?secondary_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  database_name:string prop ->
  endpoint_uri:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?authentication_type:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?partition_key_name:string prop ->
  ?partition_key_template:string prop ->
  ?primary_key:string prop ->
  ?secondary_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  database_name:string prop ->
  endpoint_uri:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
