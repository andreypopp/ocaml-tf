(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_nat_gateway_public_ip_association

val azurerm_nat_gateway_public_ip_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  nat_gateway_id:string prop ->
  public_ip_address_id:string prop ->
  unit ->
  azurerm_nat_gateway_public_ip_association

val yojson_of_azurerm_nat_gateway_public_ip_association :
  azurerm_nat_gateway_public_ip_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  nat_gateway_id : string prop;
  public_ip_address_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  nat_gateway_id:string prop ->
  public_ip_address_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  nat_gateway_id:string prop ->
  public_ip_address_id:string prop ->
  string ->
  t Tf_core.resource
