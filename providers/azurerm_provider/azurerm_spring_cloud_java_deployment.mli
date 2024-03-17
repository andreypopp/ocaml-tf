(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_java_deployment__quota
type azurerm_spring_cloud_java_deployment__timeouts
type azurerm_spring_cloud_java_deployment

val azurerm_spring_cloud_java_deployment :
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?jvm_options:string prop ->
  ?runtime_version:string prop ->
  ?timeouts:azurerm_spring_cloud_java_deployment__timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  quota:azurerm_spring_cloud_java_deployment__quota list ->
  string ->
  unit
