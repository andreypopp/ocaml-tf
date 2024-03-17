(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_dns_alias__timeouts
type azurerm_mssql_server_dns_alias

type t = private {
  dns_record : string prop;
  id : string prop;
  mssql_server_id : string prop;
  name : string prop;
}

val azurerm_mssql_server_dns_alias :
  ?id:string prop ->
  ?timeouts:azurerm_mssql_server_dns_alias__timeouts ->
  mssql_server_id:string prop ->
  name:string prop ->
  string ->
  t
