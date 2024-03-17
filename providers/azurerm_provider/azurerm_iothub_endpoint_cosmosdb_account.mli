(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_cosmosdb_account__timeouts
type azurerm_iothub_endpoint_cosmosdb_account

val azurerm_iothub_endpoint_cosmosdb_account :
  ?authentication_type:string ->
  ?identity_id:string ->
  ?partition_key_name:string ->
  ?partition_key_template:string ->
  ?primary_key:string ->
  ?secondary_key:string ->
  ?timeouts:azurerm_iothub_endpoint_cosmosdb_account__timeouts ->
  container_name:string ->
  database_name:string ->
  endpoint_uri:string ->
  iothub_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
