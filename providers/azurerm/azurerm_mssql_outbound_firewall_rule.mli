(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_outbound_firewall_rule__timeouts
type azurerm_mssql_outbound_firewall_rule

type t = private {
  id : string prop;
  name : string prop;
  server_id : string prop;
}

val azurerm_mssql_outbound_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_mssql_outbound_firewall_rule__timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t
