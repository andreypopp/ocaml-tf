(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_dapr_component__metadata
type azurerm_container_app_environment_dapr_component__secret
type azurerm_container_app_environment_dapr_component__timeouts
type azurerm_container_app_environment_dapr_component

val azurerm_container_app_environment_dapr_component :
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?init_timeout:string prop ->
  ?scopes:string prop list ->
  ?timeouts:
    azurerm_container_app_environment_dapr_component__timeouts ->
  component_type:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  version:string prop ->
  metadata:
    azurerm_container_app_environment_dapr_component__metadata list ->
  secret:
    azurerm_container_app_environment_dapr_component__secret list ->
  string ->
  unit
