(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_custom_domain__developer_portal
type azurerm_api_management_custom_domain__gateway
type azurerm_api_management_custom_domain__management
type azurerm_api_management_custom_domain__portal
type azurerm_api_management_custom_domain__scm
type azurerm_api_management_custom_domain__timeouts
type azurerm_api_management_custom_domain

val azurerm_api_management_custom_domain :
  ?timeouts:azurerm_api_management_custom_domain__timeouts ->
  api_management_id:string ->
  developer_portal:
    azurerm_api_management_custom_domain__developer_portal list ->
  gateway:azurerm_api_management_custom_domain__gateway list ->
  management:azurerm_api_management_custom_domain__management list ->
  portal:azurerm_api_management_custom_domain__portal list ->
  scm:azurerm_api_management_custom_domain__scm list ->
  string ->
  unit
