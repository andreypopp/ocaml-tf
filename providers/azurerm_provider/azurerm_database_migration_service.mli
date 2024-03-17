(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_database_migration_service__timeouts
type azurerm_database_migration_service

val azurerm_database_migration_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_database_migration_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  subnet_id:string prop ->
  string ->
  unit
