(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_network_dns_servers

val azurerm_virtual_network_dns_servers :
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  virtual_network_id:string prop ->
  unit ->
  azurerm_virtual_network_dns_servers

val yojson_of_azurerm_virtual_network_dns_servers :
  azurerm_virtual_network_dns_servers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_servers : string list prop;
  id : string prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  virtual_network_id:string prop ->
  string ->
  t
