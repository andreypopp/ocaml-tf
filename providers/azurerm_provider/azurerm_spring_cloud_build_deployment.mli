(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_build_deployment__quota
type azurerm_spring_cloud_build_deployment__timeouts
type azurerm_spring_cloud_build_deployment

val azurerm_spring_cloud_build_deployment :
  ?addon_json:string ->
  ?application_performance_monitoring_ids:string list ->
  ?environment_variables:(string * string) list ->
  ?id:string ->
  ?instance_count:float ->
  ?timeouts:azurerm_spring_cloud_build_deployment__timeouts ->
  build_result_id:string ->
  name:string ->
  spring_cloud_app_id:string ->
  quota:azurerm_spring_cloud_build_deployment__quota list ->
  string ->
  unit
