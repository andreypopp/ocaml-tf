(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api__contact
type azurerm_api_management_api__import__wsdl_selector
type azurerm_api_management_api__import
type azurerm_api_management_api__license
type azurerm_api_management_api__oauth2_authorization
type azurerm_api_management_api__openid_authentication
type azurerm_api_management_api__subscription_key_parameter_names
type azurerm_api_management_api__timeouts
type azurerm_api_management_api

val azurerm_api_management_api :
  ?api_type:string ->
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?path:string ->
  ?protocols:string list ->
  ?revision_description:string ->
  ?service_url:string ->
  ?soap_pass_through:bool ->
  ?source_api_id:string ->
  ?subscription_required:bool ->
  ?terms_of_service_url:string ->
  ?version:string ->
  ?version_description:string ->
  ?version_set_id:string ->
  ?timeouts:azurerm_api_management_api__timeouts ->
  api_management_name:string ->
  name:string ->
  resource_group_name:string ->
  revision:string ->
  contact:azurerm_api_management_api__contact list ->
  import:azurerm_api_management_api__import list ->
  license:azurerm_api_management_api__license list ->
  oauth2_authorization:
    azurerm_api_management_api__oauth2_authorization list ->
  openid_authentication:
    azurerm_api_management_api__openid_authentication list ->
  subscription_key_parameter_names:
    azurerm_api_management_api__subscription_key_parameter_names list ->
  string ->
  unit
