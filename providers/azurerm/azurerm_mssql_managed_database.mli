(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type long_term_retention_policy

val long_term_retention_policy :
  ?immutable_backups_enabled:bool prop ->
  ?monthly_retention:string prop ->
  ?week_of_year:float prop ->
  ?weekly_retention:string prop ->
  ?yearly_retention:string prop ->
  unit ->
  long_term_retention_policy

type point_in_time_restore

val point_in_time_restore :
  restore_point_in_time:string prop ->
  source_database_id:string prop ->
  unit ->
  point_in_time_restore

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_managed_database

val azurerm_mssql_managed_database :
  ?id:string prop ->
  ?short_term_retention_days:float prop ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?point_in_time_restore:point_in_time_restore list ->
  ?timeouts:timeouts ->
  managed_instance_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mssql_managed_database

val yojson_of_azurerm_mssql_managed_database :
  azurerm_mssql_managed_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  managed_instance_id : string prop;
  name : string prop;
  short_term_retention_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?short_term_retention_days:float prop ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?point_in_time_restore:point_in_time_restore list ->
  ?timeouts:timeouts ->
  managed_instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?short_term_retention_days:float prop ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?point_in_time_restore:point_in_time_restore list ->
  ?timeouts:timeouts ->
  managed_instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
