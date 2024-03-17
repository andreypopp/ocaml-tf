(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_database_migration_project__timeouts
type azurerm_database_migration_project

val azurerm_database_migration_project :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_database_migration_project__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  service_name:string ->
  source_platform:string ->
  target_platform:string ->
  string ->
  unit
