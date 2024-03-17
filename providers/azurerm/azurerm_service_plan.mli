(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_service_plan__timeouts
type azurerm_service_plan

type t = private {
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

val azurerm_service_plan :
  ?app_service_environment_id:string prop ->
  ?id:string prop ->
  ?maximum_elastic_worker_count:float prop ->
  ?per_site_scaling_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?worker_count:float prop ->
  ?zone_balancing_enabled:bool prop ->
  ?timeouts:azurerm_service_plan__timeouts ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
