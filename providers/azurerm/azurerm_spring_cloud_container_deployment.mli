(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type azurerm_spring_cloud_container_deployment

val azurerm_spring_cloud_container_deployment :
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?arguments:string prop list ->
  ?commands:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?language_framework:string prop ->
  ?timeouts:timeouts ->
  image:string prop ->
  name:string prop ->
  server:string prop ->
  spring_cloud_app_id:string prop ->
  quota:quota list ->
  unit ->
  azurerm_spring_cloud_container_deployment

val yojson_of_azurerm_spring_cloud_container_deployment :
  azurerm_spring_cloud_container_deployment -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?addon_json:string prop ->
  ?application_performance_monitoring_ids:string prop list ->
  ?arguments:string prop list ->
  ?commands:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?language_framework:string prop ->
  ?timeouts:timeouts ->
  image:string prop ->
  name:string prop ->
  server:string prop ->
  spring_cloud_app_id:string prop ->
  quota:quota list ->
  string ->
  t
