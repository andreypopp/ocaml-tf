(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type link__bgp

val link__bgp :
  asn:float prop -> peering_address:string prop -> unit -> link__bgp

type link

val link :
  ?fqdn:string prop ->
  ?ip_address:string prop ->
  ?provider_name:string prop ->
  ?speed_in_mbps:float prop ->
  name:string prop ->
  bgp:link__bgp list ->
  unit ->
  link

type o365_policy__traffic_category

val o365_policy__traffic_category :
  ?allow_endpoint_enabled:bool prop ->
  ?default_endpoint_enabled:bool prop ->
  ?optimize_endpoint_enabled:bool prop ->
  unit ->
  o365_policy__traffic_category

type o365_policy

val o365_policy :
  traffic_category:o365_policy__traffic_category list ->
  unit ->
  o365_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vpn_site

val azurerm_vpn_site :
  ?address_cidrs:string prop list ->
  ?device_model:string prop ->
  ?device_vendor:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_wan_id:string prop ->
  link:link list ->
  o365_policy:o365_policy list ->
  unit ->
  azurerm_vpn_site

val yojson_of_azurerm_vpn_site : azurerm_vpn_site -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_cidrs : string list prop;
  device_model : string prop;
  device_vendor : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_wan_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address_cidrs:string prop list ->
  ?device_model:string prop ->
  ?device_vendor:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_wan_id:string prop ->
  link:link list ->
  o365_policy:o365_policy list ->
  string ->
  t

val make :
  ?address_cidrs:string prop list ->
  ?device_model:string prop ->
  ?device_vendor:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_wan_id:string prop ->
  link:link list ->
  o365_policy:o365_policy list ->
  string ->
  t Tf_core.resource
