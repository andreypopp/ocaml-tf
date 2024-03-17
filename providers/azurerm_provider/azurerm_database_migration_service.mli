(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_database_migration_service__timeouts
type azurerm_database_migration_service

val azurerm_database_migration_service :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_database_migration_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  subnet_id:string ->
  string ->
  unit
