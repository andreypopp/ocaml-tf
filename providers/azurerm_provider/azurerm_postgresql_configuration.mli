(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_configuration__timeouts
type azurerm_postgresql_configuration

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  value : string prop;
}

val azurerm_postgresql_configuration :
  ?id:string prop ->
  ?timeouts:azurerm_postgresql_configuration__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  value:string prop ->
  string ->
  t
