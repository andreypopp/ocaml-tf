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

type azurerm_spring_cloud_java_deployment

val azurerm_spring_cloud_java_deployment :
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?jvm_options:string prop ->
  ?runtime_version:string prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_java_deployment

val yojson_of_azurerm_spring_cloud_java_deployment :
  azurerm_spring_cloud_java_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  environment_variables : (string * string) list prop;
  id : string prop;
  instance_count : float prop;
  jvm_options : string prop;
  name : string prop;
  runtime_version : string prop;
  spring_cloud_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?jvm_options:string prop ->
  ?runtime_version:string prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?environment_variables:(string * string prop) list ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?jvm_options:string prop ->
  ?runtime_version:string prop ->
  ?quota:quota list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
