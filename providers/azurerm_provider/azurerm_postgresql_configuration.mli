(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_configuration__timeouts
type azurerm_postgresql_configuration

val azurerm_postgresql_configuration :
  ?id:string ->
  ?timeouts:azurerm_postgresql_configuration__timeouts ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  value:string ->
  string ->
  unit
