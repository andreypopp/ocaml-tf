(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_gateway_route_config__open_api
type azurerm_spring_cloud_gateway_route_config__route
type azurerm_spring_cloud_gateway_route_config__timeouts
type azurerm_spring_cloud_gateway_route_config

val azurerm_spring_cloud_gateway_route_config :
  ?filters:string list ->
  ?id:string ->
  ?predicates:string list ->
  ?protocol:string ->
  ?spring_cloud_app_id:string ->
  ?sso_validation_enabled:bool ->
  ?timeouts:azurerm_spring_cloud_gateway_route_config__timeouts ->
  name:string ->
  spring_cloud_gateway_id:string ->
  open_api:azurerm_spring_cloud_gateway_route_config__open_api list ->
  route:azurerm_spring_cloud_gateway_route_config__route list ->
  string ->
  unit
