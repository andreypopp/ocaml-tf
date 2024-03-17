(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_firewall_rule__timeouts
type azurerm_mssql_firewall_rule

type t = private {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  server_id : string prop;
  start_ip_address : string prop;
}

val azurerm_mssql_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_mssql_firewall_rule__timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  server_id:string prop ->
  start_ip_address:string prop ->
  string ->
  t
