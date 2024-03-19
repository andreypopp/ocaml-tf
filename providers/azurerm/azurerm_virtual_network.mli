(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type subnet = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  security_group : string prop;  (** security_group *)
}

type ddos_protection_plan

val ddos_protection_plan :
  enable:bool prop -> id:string prop -> unit -> ddos_protection_plan

type encryption

val encryption : enforcement:string prop -> unit -> encryption

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_network

val azurerm_virtual_network :
  ?bgp_community:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?flow_timeout_in_minutes:float prop ->
  ?id:string prop ->
  ?subnet:subnet list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  address_space:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ddos_protection_plan:ddos_protection_plan list ->
  encryption:encryption list ->
  unit ->
  azurerm_virtual_network

val yojson_of_azurerm_virtual_network :
  azurerm_virtual_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_space : string list prop;
  bgp_community : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  flow_timeout_in_minutes : float prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet : subnet list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?bgp_community:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?flow_timeout_in_minutes:float prop ->
  ?id:string prop ->
  ?subnet:subnet list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  address_space:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ddos_protection_plan:ddos_protection_plan list ->
  encryption:encryption list ->
  string ->
  t
