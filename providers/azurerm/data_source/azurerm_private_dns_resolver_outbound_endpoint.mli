(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_resolver_outbound_endpoint

val azurerm_private_dns_resolver_outbound_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  unit ->
  azurerm_private_dns_resolver_outbound_endpoint

val yojson_of_azurerm_private_dns_resolver_outbound_endpoint :
  azurerm_private_dns_resolver_outbound_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  string ->
  t Tf_core.resource
