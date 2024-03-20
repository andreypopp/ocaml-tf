(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_resolver_outbound_endpoint

val azurerm_private_dns_resolver_outbound_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_private_dns_resolver_outbound_endpoint

val yojson_of_azurerm_private_dns_resolver_outbound_endpoint :
  azurerm_private_dns_resolver_outbound_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  subnet_id : string prop;
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
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
