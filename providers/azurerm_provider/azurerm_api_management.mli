(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management__additional_location__virtual_network_configuration

type azurerm_api_management__additional_location
type azurerm_api_management__certificate
type azurerm_api_management__delegation
type azurerm_api_management__hostname_configuration__developer_portal
type azurerm_api_management__hostname_configuration__management
type azurerm_api_management__hostname_configuration__portal
type azurerm_api_management__hostname_configuration__proxy
type azurerm_api_management__hostname_configuration__scm
type azurerm_api_management__hostname_configuration
type azurerm_api_management__identity
type azurerm_api_management__protocols
type azurerm_api_management__security
type azurerm_api_management__sign_in
type azurerm_api_management__sign_up__terms_of_service
type azurerm_api_management__sign_up
type azurerm_api_management__tenant_access
type azurerm_api_management__timeouts
type azurerm_api_management__virtual_network_configuration

type azurerm_api_management__policy = {
  xml_content : string prop;  (** xml_content *)
  xml_link : string prop;  (** xml_link *)
}

type azurerm_api_management

type t = private {
  client_certificate_enabled : bool prop;
  developer_portal_url : string prop;
  gateway_disabled : bool prop;
  gateway_regional_url : string prop;
  gateway_url : string prop;
  id : string prop;
  location : string prop;
  management_api_url : string prop;
  min_api_version : string prop;
  name : string prop;
  notification_sender_email : string prop;
  policy : azurerm_api_management__policy list prop;
  portal_url : string prop;
  private_ip_addresses : string list prop;
  public_ip_address_id : string prop;
  public_ip_addresses : string list prop;
  public_network_access_enabled : bool prop;
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  scm_url : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_type : string prop;
  zones : string list prop;
}

val azurerm_api_management :
  ?client_certificate_enabled:bool prop ->
  ?gateway_disabled:bool prop ->
  ?id:string prop ->
  ?min_api_version:string prop ->
  ?notification_sender_email:string prop ->
  ?policy:azurerm_api_management__policy list ->
  ?public_ip_address_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_type:string prop ->
  ?zones:string prop list ->
  ?timeouts:azurerm_api_management__timeouts ->
  location:string prop ->
  name:string prop ->
  publisher_email:string prop ->
  publisher_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  additional_location:
    azurerm_api_management__additional_location list ->
  certificate:azurerm_api_management__certificate list ->
  delegation:azurerm_api_management__delegation list ->
  hostname_configuration:
    azurerm_api_management__hostname_configuration list ->
  identity:azurerm_api_management__identity list ->
  protocols:azurerm_api_management__protocols list ->
  security:azurerm_api_management__security list ->
  sign_in:azurerm_api_management__sign_in list ->
  sign_up:azurerm_api_management__sign_up list ->
  tenant_access:azurerm_api_management__tenant_access list ->
  virtual_network_configuration:
    azurerm_api_management__virtual_network_configuration list ->
  string ->
  t
