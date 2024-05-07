(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_service_plan

val azurerm_service_plan :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_service_plan

val yojson_of_azurerm_service_plan : azurerm_service_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_environment_id : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  maximum_elastic_worker_count : float prop;
  name : string prop;
  os_type : string prop;
  per_site_scaling_enabled : bool prop;
  reserved : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  worker_count : float prop;
  zone_balancing_enabled : bool prop;
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
