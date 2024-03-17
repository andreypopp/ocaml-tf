(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_access_connector__identity
type azurerm_databricks_access_connector__timeouts
type azurerm_databricks_access_connector

val azurerm_databricks_access_connector :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_databricks_access_connector__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_databricks_access_connector__identity list ->
  string ->
  unit
