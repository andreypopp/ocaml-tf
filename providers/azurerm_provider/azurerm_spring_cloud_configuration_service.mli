(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_configuration_service__repository
type azurerm_spring_cloud_configuration_service__timeouts
type azurerm_spring_cloud_configuration_service

val azurerm_spring_cloud_configuration_service :
  ?generation:string ->
  ?id:string ->
  ?refresh_interval_in_seconds:float ->
  ?timeouts:azurerm_spring_cloud_configuration_service__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  repository:
    azurerm_spring_cloud_configuration_service__repository list ->
  string ->
  unit
