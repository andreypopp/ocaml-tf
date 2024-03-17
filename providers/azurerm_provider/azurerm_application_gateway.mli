(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_gateway__authentication_certificate
type azurerm_application_gateway__autoscale_configuration
type azurerm_application_gateway__backend_address_pool

type azurerm_application_gateway__backend_http_settings__authentication_certificate

type azurerm_application_gateway__backend_http_settings__connection_draining

type azurerm_application_gateway__backend_http_settings
type azurerm_application_gateway__custom_error_configuration
type azurerm_application_gateway__frontend_ip_configuration
type azurerm_application_gateway__frontend_port
type azurerm_application_gateway__gateway_ip_configuration
type azurerm_application_gateway__global

type azurerm_application_gateway__http_listener__custom_error_configuration

type azurerm_application_gateway__http_listener
type azurerm_application_gateway__identity

type azurerm_application_gateway__private_link_configuration__ip_configuration

type azurerm_application_gateway__private_link_configuration
type azurerm_application_gateway__probe__match
type azurerm_application_gateway__probe
type azurerm_application_gateway__redirect_configuration
type azurerm_application_gateway__request_routing_rule

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url
type azurerm_application_gateway__rewrite_rule_set__rewrite_rule
type azurerm_application_gateway__rewrite_rule_set
type azurerm_application_gateway__sku
type azurerm_application_gateway__ssl_certificate
type azurerm_application_gateway__ssl_policy
type azurerm_application_gateway__ssl_profile__ssl_policy
type azurerm_application_gateway__ssl_profile
type azurerm_application_gateway__timeouts
type azurerm_application_gateway__trusted_client_certificate
type azurerm_application_gateway__trusted_root_certificate
type azurerm_application_gateway__url_path_map__path_rule
type azurerm_application_gateway__url_path_map

type azurerm_application_gateway__waf_configuration__disabled_rule_group

type azurerm_application_gateway__waf_configuration__exclusion
type azurerm_application_gateway__waf_configuration

type azurerm_application_gateway__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_application_gateway

val azurerm_application_gateway :
  ?enable_http2:bool ->
  ?fips_enabled:bool ->
  ?firewall_policy_id:string ->
  ?force_firewall_policy_association:bool ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_application_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  authentication_certificate:
    azurerm_application_gateway__authentication_certificate list ->
  autoscale_configuration:
    azurerm_application_gateway__autoscale_configuration list ->
  backend_address_pool:
    azurerm_application_gateway__backend_address_pool list ->
  backend_http_settings:
    azurerm_application_gateway__backend_http_settings list ->
  custom_error_configuration:
    azurerm_application_gateway__custom_error_configuration list ->
  frontend_ip_configuration:
    azurerm_application_gateway__frontend_ip_configuration list ->
  frontend_port:azurerm_application_gateway__frontend_port list ->
  gateway_ip_configuration:
    azurerm_application_gateway__gateway_ip_configuration list ->
  global:azurerm_application_gateway__global list ->
  http_listener:azurerm_application_gateway__http_listener list ->
  identity:azurerm_application_gateway__identity list ->
  private_link_configuration:
    azurerm_application_gateway__private_link_configuration list ->
  probe:azurerm_application_gateway__probe list ->
  redirect_configuration:
    azurerm_application_gateway__redirect_configuration list ->
  request_routing_rule:
    azurerm_application_gateway__request_routing_rule list ->
  rewrite_rule_set:azurerm_application_gateway__rewrite_rule_set list ->
  sku:azurerm_application_gateway__sku list ->
  ssl_certificate:azurerm_application_gateway__ssl_certificate list ->
  ssl_policy:azurerm_application_gateway__ssl_policy list ->
  ssl_profile:azurerm_application_gateway__ssl_profile list ->
  trusted_client_certificate:
    azurerm_application_gateway__trusted_client_certificate list ->
  trusted_root_certificate:
    azurerm_application_gateway__trusted_root_certificate list ->
  url_path_map:azurerm_application_gateway__url_path_map list ->
  waf_configuration:
    azurerm_application_gateway__waf_configuration list ->
  string ->
  unit
