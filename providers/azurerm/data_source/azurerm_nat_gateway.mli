(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_nat_gateway

val azurerm_nat_gateway :
  ?id:string prop ->
  ?public_ip_address_ids:string prop list ->
  ?public_ip_prefix_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_nat_gateway

val yojson_of_azurerm_nat_gateway : azurerm_nat_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  public_ip_address_ids : string list prop;
  public_ip_prefix_ids : string list prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_ip_address_ids:string prop list ->
  ?public_ip_prefix_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?public_ip_address_ids:string prop list ->
  ?public_ip_prefix_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
