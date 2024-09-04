(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type record

val record :
  port:float prop ->
  priority:float prop ->
  target:string prop ->
  weight:float prop ->
  unit ->
  record

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_srv_record

val azurerm_private_dns_srv_record :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  unit ->
  azurerm_private_dns_srv_record

val yojson_of_azurerm_private_dns_srv_record :
  azurerm_private_dns_srv_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  ttl : float prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  record:record list ->
  string ->
  t Tf_core.resource
