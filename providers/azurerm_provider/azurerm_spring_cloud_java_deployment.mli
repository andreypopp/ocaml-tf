(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_java_deployment__quota
type azurerm_spring_cloud_java_deployment__timeouts
type azurerm_spring_cloud_java_deployment

val azurerm_spring_cloud_java_deployment :
  ?environment_variables:(string * string) list ->
  ?instance_count:float ->
  ?jvm_options:string ->
  ?runtime_version:string ->
  ?timeouts:azurerm_spring_cloud_java_deployment__timeouts ->
  name:string ->
  spring_cloud_app_id:string ->
  quota:azurerm_spring_cloud_java_deployment__quota list ->
  string ->
  unit
