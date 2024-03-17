(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_cosmosdb_association__timeouts
type azurerm_spring_cloud_app_cosmosdb_association

val azurerm_spring_cloud_app_cosmosdb_association :
  ?cosmosdb_cassandra_keyspace_name:string prop ->
  ?cosmosdb_gremlin_database_name:string prop ->
  ?cosmosdb_gremlin_graph_name:string prop ->
  ?cosmosdb_mongo_database_name:string prop ->
  ?cosmosdb_sql_database_name:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_app_cosmosdb_association__timeouts ->
  api_type:string prop ->
  cosmosdb_access_key:string prop ->
  cosmosdb_account_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  unit
