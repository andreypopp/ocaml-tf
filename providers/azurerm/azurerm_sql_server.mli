(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_server__identity
type azurerm_sql_server__threat_detection_policy
type azurerm_sql_server__timeouts
type azurerm_sql_server

type t = private {
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

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
  t
