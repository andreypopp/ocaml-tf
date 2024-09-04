(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service_environment

val azurerm_app_service_environment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_environment

val yojson_of_azurerm_app_service_environment :
  azurerm_app_service_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_setting : cluster_setting list prop;
  front_end_scale_factor : float prop;
  id : string prop;
  internal_ip_address : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  pricing_tier : string prop;
  resource_group_name : string prop;
  service_ip_address : string prop;
  tags : string Tf_core.assoc prop;
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
