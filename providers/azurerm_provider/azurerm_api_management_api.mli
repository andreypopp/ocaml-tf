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
  ?api_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?protocols:string prop list ->
  ?revision_description:string prop ->
  ?service_url:string prop ->
  ?soap_pass_through:bool prop ->
  ?source_api_id:string prop ->
  ?subscription_required:bool prop ->
  ?terms_of_service_url:string prop ->
  ?version:string prop ->
  ?version_description:string prop ->
  ?version_set_id:string prop ->
  ?timeouts:azurerm_api_management_api__timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision:string prop ->
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
