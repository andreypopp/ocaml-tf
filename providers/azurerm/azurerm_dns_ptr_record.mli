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

type azurerm_dns_ptr_record

val azurerm_dns_ptr_record :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  records:string prop list ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  unit ->
  azurerm_dns_ptr_record

val yojson_of_azurerm_dns_ptr_record : azurerm_dns_ptr_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
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
  records:string prop list ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  records:string prop list ->
  resource_group_name:string prop ->
  ttl:float prop ->
  zone_name:string prop ->
  string ->
  t Tf_core.resource
