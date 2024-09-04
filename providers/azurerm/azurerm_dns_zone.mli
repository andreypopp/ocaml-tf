(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type soa_record

val soa_record :
  ?expire_time:float prop ->
  ?host_name:string prop ->
  ?minimum_ttl:float prop ->
  ?refresh_time:float prop ->
  ?retry_time:float prop ->
  ?serial_number:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?ttl:float prop ->
  email:string prop ->
  unit ->
  soa_record

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dns_zone

val azurerm_dns_zone :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?soa_record:soa_record list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dns_zone

val yojson_of_azurerm_dns_zone : azurerm_dns_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  max_number_of_record_sets : float prop;
  name : string prop;
  name_servers : string list prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?soa_record:soa_record list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?soa_record:soa_record list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
