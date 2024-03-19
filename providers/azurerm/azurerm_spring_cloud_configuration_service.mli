(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type repository

val repository :
  ?ca_certificate_id:string prop ->
  ?host_key:string prop ->
  ?host_key_algorithm:string prop ->
  ?password:string prop ->
  ?private_key:string prop ->
  ?search_paths:string prop list ->
  ?strict_host_key_checking:bool prop ->
  ?username:string prop ->
  label:string prop ->
  name:string prop ->
  patterns:string prop list ->
  uri:string prop ->
  unit ->
  repository

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_configuration_service

val azurerm_spring_cloud_configuration_service :
  ?generation:string prop ->
  ?id:string prop ->
  ?refresh_interval_in_seconds:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  repository:repository list ->
  unit ->
  azurerm_spring_cloud_configuration_service

val yojson_of_azurerm_spring_cloud_configuration_service :
  azurerm_spring_cloud_configuration_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  generation : string prop;
  id : string prop;
  name : string prop;
  refresh_interval_in_seconds : float prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?generation:string prop ->
  ?id:string prop ->
  ?refresh_interval_in_seconds:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  repository:repository list ->
  string ->
  t
