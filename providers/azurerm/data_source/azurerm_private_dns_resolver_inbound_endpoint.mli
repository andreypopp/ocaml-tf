(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configurations = {
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_allocation_method : string prop;
      (** private_ip_allocation_method *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_resolver_inbound_endpoint

val azurerm_private_dns_resolver_inbound_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  unit ->
  azurerm_private_dns_resolver_inbound_endpoint

val yojson_of_azurerm_private_dns_resolver_inbound_endpoint :
  azurerm_private_dns_resolver_inbound_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ip_configurations : ip_configurations list prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  tags : (string * string) list prop;
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
