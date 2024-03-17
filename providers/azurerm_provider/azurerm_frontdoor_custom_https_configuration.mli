(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_frontdoor_custom_https_configuration__custom_https_configuration

type azurerm_frontdoor_custom_https_configuration__timeouts
type azurerm_frontdoor_custom_https_configuration

val azurerm_frontdoor_custom_https_configuration :
  ?id:string ->
  ?timeouts:azurerm_frontdoor_custom_https_configuration__timeouts ->
  custom_https_provisioning_enabled:bool ->
  frontend_endpoint_id:string ->
  custom_https_configuration:
    azurerm_frontdoor_custom_https_configuration__custom_https_configuration
    list ->
  string ->
  unit
