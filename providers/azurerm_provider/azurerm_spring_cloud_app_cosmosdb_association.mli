(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_cosmosdb_association__timeouts
type azurerm_spring_cloud_app_cosmosdb_association

val azurerm_spring_cloud_app_cosmosdb_association :
  ?cosmosdb_cassandra_keyspace_name:string ->
  ?cosmosdb_gremlin_database_name:string ->
  ?cosmosdb_gremlin_graph_name:string ->
  ?cosmosdb_mongo_database_name:string ->
  ?cosmosdb_sql_database_name:string ->
  ?id:string ->
  ?timeouts:azurerm_spring_cloud_app_cosmosdb_association__timeouts ->
  api_type:string ->
  cosmosdb_access_key:string ->
  cosmosdb_account_id:string ->
  name:string ->
  spring_cloud_app_id:string ->
  string ->
  unit
