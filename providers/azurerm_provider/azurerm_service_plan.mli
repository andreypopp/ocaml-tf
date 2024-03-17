(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_service_plan__timeouts
type azurerm_service_plan

val azurerm_service_plan :
  ?app_service_environment_id:string ->
  ?id:string ->
  ?maximum_elastic_worker_count:float ->
  ?per_site_scaling_enabled:bool ->
  ?tags:(string * string) list ->
  ?worker_count:float ->
  ?zone_balancing_enabled:bool ->
  ?timeouts:azurerm_service_plan__timeouts ->
  location:string ->
  name:string ->
  os_type:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
