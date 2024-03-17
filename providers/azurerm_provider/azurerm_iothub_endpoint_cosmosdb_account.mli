(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_cosmosdb_account__timeouts
type azurerm_iothub_endpoint_cosmosdb_account

val azurerm_iothub_endpoint_cosmosdb_account :
  ?authentication_type:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?partition_key_name:string prop ->
  ?partition_key_template:string prop ->
  ?primary_key:string prop ->
  ?secondary_key:string prop ->
  ?timeouts:azurerm_iothub_endpoint_cosmosdb_account__timeouts ->
  container_name:string prop ->
  database_name:string prop ->
  endpoint_uri:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
