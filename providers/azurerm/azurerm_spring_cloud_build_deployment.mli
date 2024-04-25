(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type quota

val quota : ?cpu:string prop -> ?memory:string prop -> unit -> quota

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_build_deployment

val azurerm_spring_cloud_build_deployment :
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  build_result_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_build_deployment

val yojson_of_azurerm_spring_cloud_build_deployment :
  azurerm_spring_cloud_build_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  addon_json : string prop;
  application_performance_monitoring_ids : string list prop;
  build_result_id : string prop;
  environment_variables : (string * string) list prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  spring_cloud_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  build_result_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  build_result_id:string prop ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
