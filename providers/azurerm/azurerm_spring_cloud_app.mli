(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app__custom_persistent_disk
type azurerm_spring_cloud_app__identity
type azurerm_spring_cloud_app__ingress_settings
type azurerm_spring_cloud_app__persistent_disk
type azurerm_spring_cloud_app__timeouts
type azurerm_spring_cloud_app

type t = private {
  addon_json : string prop;
  fqdn : string prop;
  https_only : bool prop;
  id : string prop;
  is_public : bool prop;
  name : string prop;
  public_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop;
  url : string prop;
}

val azurerm_spring_cloud_app :
  ?addon_json:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?is_public:bool prop ->
  ?public_endpoint_enabled:bool prop ->
  ?tls_enabled:bool prop ->
  ?timeouts:azurerm_spring_cloud_app__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  custom_persistent_disk:
    azurerm_spring_cloud_app__custom_persistent_disk list ->
  identity:azurerm_spring_cloud_app__identity list ->
  ingress_settings:azurerm_spring_cloud_app__ingress_settings list ->
  persistent_disk:azurerm_spring_cloud_app__persistent_disk list ->
  string ->
  t
