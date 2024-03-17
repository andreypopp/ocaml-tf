(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_database__import
type azurerm_sql_database__threat_detection_policy
type azurerm_sql_database__timeouts
type azurerm_sql_database

val azurerm_sql_database :
  ?collation:string ->
  ?create_mode:string ->
  ?edition:string ->
  ?elastic_pool_name:string ->
  ?id:string ->
  ?max_size_bytes:string ->
  ?max_size_gb:string ->
  ?read_scale:bool ->
  ?requested_service_objective_id:string ->
  ?requested_service_objective_name:string ->
  ?restore_point_in_time:string ->
  ?source_database_deletion_date:string ->
  ?source_database_id:string ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_sql_database__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  import:azurerm_sql_database__import list ->
  threat_detection_policy:
    azurerm_sql_database__threat_detection_policy list ->
  string ->
  unit
