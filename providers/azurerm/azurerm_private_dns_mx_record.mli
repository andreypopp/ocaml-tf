(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type record

val record :
  exchange:string prop -> preference:float prop -> unit -> record

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_mx_record

val azurerm_private_dns_mx_record :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  unit ->
  azurerm_private_dns_mx_record

val yojson_of_azurerm_private_dns_mx_record :
  azurerm_private_dns_mx_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  fqdn : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  string ->
  t Tf_core.resource
