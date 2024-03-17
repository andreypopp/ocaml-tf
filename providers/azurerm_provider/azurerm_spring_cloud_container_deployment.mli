(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_container_deployment__quota
type azurerm_spring_cloud_container_deployment__timeouts
type azurerm_spring_cloud_container_deployment

type t = private {
  addon_json : string prop;
  application_performance_monitoring_ids : string list prop;
  arguments : string list prop;
  commands : string list prop;
  environment_variables : (string * string) list prop;
  id : string prop;
  image : string prop;
  instance_count : float prop;
  language_framework : string prop;
  name : string prop;
  server : string prop;
  spring_cloud_app_id : string prop;
}

val azurerm_spring_cloud_container_deployment :
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?arguments:string prop list ->
  ?commands:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?language_framework:string prop ->
  ?timeouts:azurerm_spring_cloud_container_deployment__timeouts ->
  image:string prop ->
  name:string prop ->
  server:string prop ->
  spring_cloud_app_id:string prop ->
  quota:azurerm_spring_cloud_container_deployment__quota list ->
  string ->
  t
