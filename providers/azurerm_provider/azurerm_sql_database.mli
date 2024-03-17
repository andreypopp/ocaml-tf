(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_database__import
type azurerm_sql_database__threat_detection_policy
type azurerm_sql_database__timeouts
type azurerm_sql_database

val azurerm_sql_database :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?edition:string prop ->
  ?elastic_pool_name:string prop ->
  ?id:string prop ->
  ?max_size_bytes:string prop ->
  ?max_size_gb:string prop ->
  ?read_scale:bool prop ->
  ?requested_service_objective_id:string prop ->
  ?requested_service_objective_name:string prop ->
  ?restore_point_in_time:string prop ->
  ?source_database_deletion_date:string prop ->
  ?source_database_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_sql_database__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  import:azurerm_sql_database__import list ->
  threat_detection_policy:
    azurerm_sql_database__threat_detection_policy list ->
  string ->
  unit
