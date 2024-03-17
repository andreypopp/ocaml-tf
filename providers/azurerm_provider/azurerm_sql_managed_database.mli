(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_managed_database__timeouts
type azurerm_sql_managed_database

val azurerm_sql_managed_database :
  ?id:string prop ->
  ?timeouts:azurerm_sql_managed_database__timeouts ->
  location:string prop ->
  name:string prop ->
  sql_managed_instance_id:string prop ->
  string ->
  unit
