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

type azurerm_dns_aaaa_record

val azurerm_dns_aaaa_record :
  ?id:string prop ->
  ?records:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_aaaa_record

val yojson_of_azurerm_dns_aaaa_record :
  azurerm_dns_aaaa_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  target_resource_id : string prop;
  ttl : float prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?records:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?records:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t Tf_core.resource
