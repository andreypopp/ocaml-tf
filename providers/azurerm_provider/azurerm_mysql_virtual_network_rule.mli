(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_virtual_network_rule__timeouts
type azurerm_mysql_virtual_network_rule

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
}

val azurerm_mysql_virtual_network_rule :
  ?id:string prop ->
  ?timeouts:azurerm_mysql_virtual_network_rule__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  string ->
  t
