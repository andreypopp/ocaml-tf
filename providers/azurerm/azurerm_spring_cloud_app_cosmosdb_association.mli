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

type azurerm_spring_cloud_app_cosmosdb_association

val azurerm_spring_cloud_app_cosmosdb_association :
  ?cosmosdb_cassandra_keyspace_name:string prop ->
  ?cosmosdb_gremlin_database_name:string prop ->
  ?cosmosdb_gremlin_graph_name:string prop ->
  ?cosmosdb_mongo_database_name:string prop ->
  ?cosmosdb_sql_database_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_type:string prop ->
  cosmosdb_access_key:string prop ->
  cosmosdb_account_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_app_cosmosdb_association

val yojson_of_azurerm_spring_cloud_app_cosmosdb_association :
  azurerm_spring_cloud_app_cosmosdb_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_type : string prop;
  cosmosdb_access_key : string prop;
  cosmosdb_account_id : string prop;
  cosmosdb_cassandra_keyspace_name : string prop;
  cosmosdb_gremlin_database_name : string prop;
  cosmosdb_gremlin_graph_name : string prop;
  cosmosdb_mongo_database_name : string prop;
  cosmosdb_sql_database_name : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cosmosdb_cassandra_keyspace_name:string prop ->
  ?cosmosdb_gremlin_database_name:string prop ->
  ?cosmosdb_gremlin_graph_name:string prop ->
  ?cosmosdb_mongo_database_name:string prop ->
  ?cosmosdb_sql_database_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_type:string prop ->
  cosmosdb_access_key:string prop ->
  cosmosdb_account_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?cosmosdb_cassandra_keyspace_name:string prop ->
  ?cosmosdb_gremlin_database_name:string prop ->
  ?cosmosdb_gremlin_graph_name:string prop ->
  ?cosmosdb_mongo_database_name:string prop ->
  ?cosmosdb_sql_database_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_type:string prop ->
  cosmosdb_access_key:string prop ->
  cosmosdb_account_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
