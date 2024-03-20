(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type record = {
  port : float prop;  (** port *)
  priority : float prop;  (** priority *)
  target : string prop;  (** target *)
  weight : float prop;  (** weight *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dns_srv_record

val azurerm_dns_srv_record :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_srv_record

val yojson_of_azurerm_dns_srv_record : azurerm_dns_srv_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
