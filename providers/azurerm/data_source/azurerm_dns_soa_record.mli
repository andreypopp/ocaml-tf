(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dns_soa_record

val azurerm_dns_soa_record :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_soa_record

val yojson_of_azurerm_dns_soa_record : azurerm_dns_soa_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  email : string prop;
  expire_time : float prop;
  fqdn : string prop;
  host_name : string prop;
  id : string prop;
  minimum_ttl : float prop;
  name : string prop;
  refresh_time : float prop;
  resource_group_name : string prop;
  retry_time : float prop;
  serial_number : float prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  string ->
  t Tf_core.resource
