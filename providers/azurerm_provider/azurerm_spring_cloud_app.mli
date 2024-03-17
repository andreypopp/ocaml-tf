(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app__custom_persistent_disk
type azurerm_spring_cloud_app__identity
type azurerm_spring_cloud_app__ingress_settings
type azurerm_spring_cloud_app__persistent_disk
type azurerm_spring_cloud_app__timeouts
type azurerm_spring_cloud_app

val azurerm_spring_cloud_app :
  ?addon_json:string ->
  ?https_only:bool ->
  ?id:string ->
  ?is_public:bool ->
  ?public_endpoint_enabled:bool ->
  ?tls_enabled:bool ->
  ?timeouts:azurerm_spring_cloud_app__timeouts ->
  name:string ->
  resource_group_name:string ->
  service_name:string ->
  custom_persistent_disk:
    azurerm_spring_cloud_app__custom_persistent_disk list ->
  identity:azurerm_spring_cloud_app__identity list ->
  ingress_settings:azurerm_spring_cloud_app__ingress_settings list ->
  persistent_disk:azurerm_spring_cloud_app__persistent_disk list ->
  string ->
  unit
