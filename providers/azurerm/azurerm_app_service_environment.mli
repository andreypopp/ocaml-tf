(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_setting

val cluster_setting :
  name:string prop -> value:string prop -> unit -> cluster_setting

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_environment

val azurerm_app_service_environment :
  ?allowed_user_ip_cidrs:string prop list ->
  ?front_end_scale_factor:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?pricing_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_app_service_environment

val yojson_of_azurerm_app_service_environment :
  azurerm_app_service_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allowed_user_ip_cidrs : string list prop;
  front_end_scale_factor : float prop;
  id : string prop;
  internal_ip_address : string prop;
  internal_load_balancing_mode : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  pricing_tier : string prop;
  resource_group_name : string prop;
  service_ip_address : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_user_ip_cidrs:string prop list ->
  ?front_end_scale_factor:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?pricing_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?allowed_user_ip_cidrs:string prop list ->
  ?front_end_scale_factor:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?pricing_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
