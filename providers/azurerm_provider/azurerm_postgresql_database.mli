(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_database__timeouts
type azurerm_postgresql_database

type t = private {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
}

val azurerm_postgresql_database :
  ?id:string prop ->
  ?timeouts:azurerm_postgresql_database__timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t
