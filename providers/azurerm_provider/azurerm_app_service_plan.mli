(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_plan__sku
type azurerm_app_service_plan__timeouts
type azurerm_app_service_plan

val azurerm_app_service_plan :
  ?app_service_environment_id:string ->
  ?is_xenon:bool ->
  ?kind:string ->
  ?per_site_scaling:bool ->
  ?reserved:bool ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_app_service_plan__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:azurerm_app_service_plan__sku list ->
  string ->
  unit
