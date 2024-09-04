(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dns_zone

val azurerm_dns_zone :
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
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
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
