(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_build_deployment__quota
type azurerm_spring_cloud_build_deployment__timeouts
type azurerm_spring_cloud_build_deployment

val azurerm_spring_cloud_build_deployment :
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?timeouts:azurerm_spring_cloud_build_deployment__timeouts ->
  build_result_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  quota:azurerm_spring_cloud_build_deployment__quota list ->
  string ->
  unit
