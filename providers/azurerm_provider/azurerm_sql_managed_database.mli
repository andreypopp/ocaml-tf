(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_managed_database__timeouts
type azurerm_sql_managed_database

val azurerm_sql_managed_database :
  ?timeouts:azurerm_sql_managed_database__timeouts ->
  location:string ->
  name:string ->
  sql_managed_instance_id:string ->
  string ->
  unit
