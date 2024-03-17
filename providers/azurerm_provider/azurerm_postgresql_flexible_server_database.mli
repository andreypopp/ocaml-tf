(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server_database__timeouts
type azurerm_postgresql_flexible_server_database

type t = private {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  server_id : string prop;
}

val azurerm_postgresql_flexible_server_database :
  ?charset:string prop ->
  ?collation:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_postgresql_flexible_server_database__timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t
