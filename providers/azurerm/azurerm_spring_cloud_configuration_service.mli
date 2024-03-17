(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_configuration_service__repository
type azurerm_spring_cloud_configuration_service__timeouts
type azurerm_spring_cloud_configuration_service

type t = private {
  generation : string prop;
  id : string prop;
  name : string prop;
  refresh_interval_in_seconds : float prop;
  spring_cloud_service_id : string prop;
}

val azurerm_spring_cloud_configuration_service :
  ?generation:string prop ->
  ?id:string prop ->
  ?refresh_interval_in_seconds:float prop ->
  ?timeouts:azurerm_spring_cloud_configuration_service__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  repository:
    azurerm_spring_cloud_configuration_service__repository list ->
  string ->
  t
