(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_access_connector__identity
type azurerm_databricks_access_connector__timeouts
type azurerm_databricks_access_connector

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_databricks_access_connector :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_databricks_access_connector__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_databricks_access_connector__identity list ->
  string ->
  t
