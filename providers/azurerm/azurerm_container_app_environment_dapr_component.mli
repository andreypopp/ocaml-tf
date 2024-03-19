(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?secret_name:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  metadata

type secret

val secret : name:string prop -> value:string prop -> unit -> secret

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_app_environment_dapr_component

val azurerm_container_app_environment_dapr_component :
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?init_timeout:string prop ->
  ?scopes:string prop list ->
  ?timeouts:timeouts ->
  component_type:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  version:string prop ->
  metadata:metadata list ->
  secret:secret list ->
  unit ->
  azurerm_container_app_environment_dapr_component

val yojson_of_azurerm_container_app_environment_dapr_component :
  azurerm_container_app_environment_dapr_component -> json

(** RESOURCE REGISTRATION *)

type t = private {
  component_type : string prop;
  container_app_environment_id : string prop;
  id : string prop;
  ignore_errors : bool prop;
  init_timeout : string prop;
  name : string prop;
  scopes : string list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?init_timeout:string prop ->
  ?scopes:string prop list ->
  ?timeouts:timeouts ->
  component_type:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  version:string prop ->
  metadata:metadata list ->
  secret:secret list ->
  string ->
  t
