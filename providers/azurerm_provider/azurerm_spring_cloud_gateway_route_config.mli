(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_gateway_route_config__open_api
type azurerm_spring_cloud_gateway_route_config__route
type azurerm_spring_cloud_gateway_route_config__timeouts
type azurerm_spring_cloud_gateway_route_config

val azurerm_spring_cloud_gateway_route_config :
  ?filters:string prop list ->
  ?id:string prop ->
  ?predicates:string prop list ->
  ?protocol:string prop ->
  ?spring_cloud_app_id:string prop ->
  ?sso_validation_enabled:bool prop ->
  ?timeouts:azurerm_spring_cloud_gateway_route_config__timeouts ->
  name:string prop ->
  spring_cloud_gateway_id:string prop ->
  open_api:azurerm_spring_cloud_gateway_route_config__open_api list ->
  route:azurerm_spring_cloud_gateway_route_config__route list ->
  string ->
  unit
