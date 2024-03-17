(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_database__import
type azurerm_sql_database__threat_detection_policy
type azurerm_sql_database__timeouts
type azurerm_sql_database

val azurerm_sql_database :
  ?create_mode:string ->
  ?read_scale:bool ->
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
