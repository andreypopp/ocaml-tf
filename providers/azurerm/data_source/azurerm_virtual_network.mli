(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_network

val azurerm_virtual_network :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_network

val yojson_of_azurerm_virtual_network :
  azurerm_virtual_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_space : string list prop;
  dns_servers : string list prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
  vnet_peerings : string Tf_core.assoc prop;
  vnet_peerings_addresses : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
