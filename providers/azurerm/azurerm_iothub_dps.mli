(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_filter_rule

val ip_filter_rule :
  ?target:string prop ->
  action:string prop ->
  ip_mask:string prop ->
  name:string prop ->
  unit ->
  ip_filter_rule

type linked_hub

val linked_hub :
  ?allocation_weight:float prop ->
  ?apply_allocation_policy:bool prop ->
  connection_string:string prop ->
  location:string prop ->
  unit ->
  linked_hub

type sku

val sku : capacity:float prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iothub_dps

val azurerm_iothub_dps :
  ?allocation_policy:string prop ->
  ?data_residency_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?ip_filter_rule:ip_filter_rule list ->
  ?linked_hub:linked_hub list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  unit ->
  azurerm_iothub_dps

val yojson_of_azurerm_iothub_dps : azurerm_iothub_dps -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocation_policy : string prop;
  data_residency_enabled : bool prop;
  device_provisioning_host_name : string prop;
  id : string prop;
  id_scope : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_operations_host_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_policy:string prop ->
  ?data_residency_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?ip_filter_rule:ip_filter_rule list ->
  ?linked_hub:linked_hub list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?allocation_policy:string prop ->
  ?data_residency_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?ip_filter_rule:ip_filter_rule list ->
  ?linked_hub:linked_hub list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
