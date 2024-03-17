(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_container_deployment__quota
type azurerm_spring_cloud_container_deployment__timeouts
type azurerm_spring_cloud_container_deployment

val azurerm_spring_cloud_container_deployment :
  ?application_performance_monitoring_ids:string list ->
  ?arguments:string list ->
  ?commands:string list ->
  ?environment_variables:(string * string) list ->
  ?instance_count:float ->
  ?language_framework:string ->
  ?timeouts:azurerm_spring_cloud_container_deployment__timeouts ->
  image:string ->
  name:string ->
  server:string ->
  spring_cloud_app_id:string ->
  quota:azurerm_spring_cloud_container_deployment__quota list ->
  string ->
  unit
