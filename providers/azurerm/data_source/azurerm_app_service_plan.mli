(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku = {
  capacity : float prop;  (** capacity *)
  size : string prop;  (** size *)
  tier : string prop;  (** tier *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service_plan

val azurerm_app_service_plan :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_plan

val yojson_of_azurerm_app_service_plan :
  azurerm_app_service_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_environment_id : string prop;
  id : string prop;
  is_xenon : bool prop;
  kind : string prop;
  location : string prop;
  maximum_elastic_worker_count : float prop;
  maximum_number_of_workers : float prop;
  name : string prop;
  per_site_scaling : bool prop;
  reserved : bool prop;
  resource_group_name : string prop;
  sku : sku list prop;
  tags : string Tf_core.assoc prop;
  zone_redundant : bool prop;
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
