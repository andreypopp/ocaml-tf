(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type ip_configurations

val ip_configurations :
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  subnet_id:string prop ->
  unit ->
  ip_configurations

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_resolver_inbound_endpoint

val azurerm_private_dns_resolver_inbound_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  ip_configurations:ip_configurations list ->
  unit ->
  azurerm_private_dns_resolver_inbound_endpoint

val yojson_of_azurerm_private_dns_resolver_inbound_endpoint :
  azurerm_private_dns_resolver_inbound_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  ip_configurations:ip_configurations list ->
  string ->
  t
