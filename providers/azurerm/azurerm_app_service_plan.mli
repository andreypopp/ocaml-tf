(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku

val sku :
  ?capacity:float prop ->
  size:string prop ->
  tier:string prop ->
  unit ->
  sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_plan

val azurerm_app_service_plan :
  ?app_service_environment_id:string prop ->
  ?id:string prop ->
  ?is_xenon:bool prop ->
  ?kind:string prop ->
  ?maximum_elastic_worker_count:float prop ->
  ?per_site_scaling:bool prop ->
  ?reserved:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  unit ->
  azurerm_app_service_plan

val yojson_of_azurerm_app_service_plan :
  azurerm_app_service_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_service_environment_id:string prop ->
  ?id:string prop ->
  ?is_xenon:bool prop ->
  ?kind:string prop ->
  ?maximum_elastic_worker_count:float prop ->
  ?per_site_scaling:bool prop ->
  ?reserved:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?app_service_environment_id:string prop ->
  ?id:string prop ->
  ?is_xenon:bool prop ->
  ?kind:string prop ->
  ?maximum_elastic_worker_count:float prop ->
  ?per_site_scaling:bool prop ->
  ?reserved:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
