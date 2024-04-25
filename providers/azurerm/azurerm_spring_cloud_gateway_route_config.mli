(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type open_api

val open_api : ?uri:string prop -> unit -> open_api

type route

val route :
  ?classification_tags:string prop list ->
  ?description:string prop ->
  ?filters:string prop list ->
  ?predicates:string prop list ->
  ?sso_validation_enabled:bool prop ->
  ?title:string prop ->
  ?token_relay:bool prop ->
  ?uri:string prop ->
  order:float prop ->
  unit ->
  route

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_gateway_route_config

val azurerm_spring_cloud_gateway_route_config :
  ?filters:string prop list ->
  ?id:string prop ->
  ?predicates:string prop list ->
  ?protocol:string prop ->
  ?spring_cloud_app_id:string prop ->
  ?sso_validation_enabled:bool prop ->
  ?open_api:open_api list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_gateway_id:string prop ->
  route:route list ->
  unit ->
  azurerm_spring_cloud_gateway_route_config

val yojson_of_azurerm_spring_cloud_gateway_route_config :
  azurerm_spring_cloud_gateway_route_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  filters : string list prop;
  id : string prop;
  name : string prop;
  predicates : string list prop;
  protocol : string prop;
  spring_cloud_app_id : string prop;
  spring_cloud_gateway_id : string prop;
  sso_validation_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?filters:string prop list ->
  ?id:string prop ->
  ?predicates:string prop list ->
  ?protocol:string prop ->
  ?spring_cloud_app_id:string prop ->
  ?sso_validation_enabled:bool prop ->
  ?open_api:open_api list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_gateway_id:string prop ->
  route:route list ->
  string ->
  t

val make :
  ?filters:string prop list ->
  ?id:string prop ->
  ?predicates:string prop list ->
  ?protocol:string prop ->
  ?spring_cloud_app_id:string prop ->
  ?sso_validation_enabled:bool prop ->
  ?open_api:open_api list ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_gateway_id:string prop ->
  route:route list ->
  string ->
  t Tf_core.resource
