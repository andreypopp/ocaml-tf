(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_dns_servers__timeouts
type azurerm_virtual_network_dns_servers

type t = private {
  dns_servers : string list prop;
  id : string prop;
  virtual_network_id : string prop;
}

val azurerm_virtual_network_dns_servers :
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?timeouts:azurerm_virtual_network_dns_servers__timeouts ->
  virtual_network_id:string prop ->
  string ->
  t
