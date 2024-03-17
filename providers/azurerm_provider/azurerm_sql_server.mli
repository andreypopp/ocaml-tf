(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_server__identity
type azurerm_sql_server__threat_detection_policy
type azurerm_sql_server__timeouts
type azurerm_sql_server

val azurerm_sql_server :
  ?connection_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_sql_server__timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  identity:azurerm_sql_server__identity list ->
  threat_detection_policy:
    azurerm_sql_server__threat_detection_policy list ->
  string ->
  unit
