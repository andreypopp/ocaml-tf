(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_dapr_component__metadata
type azurerm_container_app_environment_dapr_component__secret
type azurerm_container_app_environment_dapr_component__timeouts
type azurerm_container_app_environment_dapr_component

val azurerm_container_app_environment_dapr_component :
  ?id:string ->
  ?ignore_errors:bool ->
  ?init_timeout:string ->
  ?scopes:string list ->
  ?timeouts:
    azurerm_container_app_environment_dapr_component__timeouts ->
  component_type:string ->
  container_app_environment_id:string ->
  name:string ->
  version:string ->
  metadata:
    azurerm_container_app_environment_dapr_component__metadata list ->
  secret:
    azurerm_container_app_environment_dapr_component__secret list ->
  string ->
  unit
