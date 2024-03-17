(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_configuration__timeouts
type azurerm_mariadb_configuration

val azurerm_mariadb_configuration :
  ?id:string prop ->
  ?timeouts:azurerm_mariadb_configuration__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  value:string prop ->
  string ->
  unit
