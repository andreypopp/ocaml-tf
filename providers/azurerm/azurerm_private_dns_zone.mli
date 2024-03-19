(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type soa_record

val soa_record :
  ?expire_time:float prop ->
  ?minimum_ttl:float prop ->
  ?refresh_time:float prop ->
  ?retry_time:float prop ->
  ?tags:(string * string prop) list ->
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

type azurerm_private_dns_zone

val azurerm_private_dns_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  soa_record:soa_record list ->
  unit ->
  azurerm_private_dns_zone

val yojson_of_azurerm_private_dns_zone :
  azurerm_private_dns_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  max_number_of_record_sets : float prop;
  max_number_of_virtual_network_links : float prop;
  max_number_of_virtual_network_links_with_registration : float prop;
  name : string prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  soa_record:soa_record list ->
  string ->
  t
