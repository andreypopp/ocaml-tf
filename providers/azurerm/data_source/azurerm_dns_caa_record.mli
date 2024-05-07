(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type record = {
  flags : float prop;  (** flags *)
  tag : string prop;  (** tag *)
  value : string prop;  (** value *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dns_caa_record

val azurerm_dns_caa_record :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_caa_record

val yojson_of_azurerm_dns_caa_record : azurerm_dns_caa_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  record : record list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  string ->
  t Tf_core.resource
