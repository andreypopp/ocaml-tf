(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server_configuration__timeouts
type azurerm_postgresql_flexible_server_configuration

type t = private {
  id : string prop;
  name : string prop;
  server_id : string prop;
  value : string prop;
}

val azurerm_postgresql_flexible_server_configuration :
  ?id:string prop ->
  ?timeouts:
    azurerm_postgresql_flexible_server_configuration__timeouts ->
  name:string prop ->
  server_id:string prop ->
  value:string prop ->
  string ->
  t
