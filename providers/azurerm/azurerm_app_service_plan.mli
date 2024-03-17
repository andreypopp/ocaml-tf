(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_plan__sku
type azurerm_app_service_plan__timeouts
type azurerm_app_service_plan

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
  ?timeouts:azurerm_app_service_plan__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:azurerm_app_service_plan__sku list ->
  string ->
  t
