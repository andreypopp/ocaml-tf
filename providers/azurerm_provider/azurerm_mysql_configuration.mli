(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_configuration__timeouts
type azurerm_mysql_configuration

val azurerm_mysql_configuration :
  ?id:string prop ->
  ?timeouts:azurerm_mysql_configuration__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  value:string prop ->
  string ->
  unit
