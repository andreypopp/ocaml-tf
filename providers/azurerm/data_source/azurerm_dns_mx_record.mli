(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type record = {
  exchange : string prop;  (** exchange *)
  preference : string prop;  (** preference *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dns_mx_record

val azurerm_dns_mx_record :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_mx_record

val yojson_of_azurerm_dns_mx_record : azurerm_dns_mx_record -> json

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
