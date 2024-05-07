(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_cname_record

val azurerm_private_dns_cname_record :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  zone_name:string prop ->
  unit ->
  azurerm_private_dns_cname_record

val yojson_of_azurerm_private_dns_cname_record :
  azurerm_private_dns_cname_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  record : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
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
