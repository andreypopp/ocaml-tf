(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway_host_name_configuration__timeouts
type azurerm_api_management_gateway_host_name_configuration

val azurerm_api_management_gateway_host_name_configuration :
  ?http2_enabled:bool ->
  ?request_client_certificate_enabled:bool ->
  ?tls10_enabled:bool ->
  ?tls11_enabled:bool ->
  ?timeouts:
    azurerm_api_management_gateway_host_name_configuration__timeouts ->
  api_management_id:string ->
  certificate_id:string ->
  gateway_name:string ->
  host_name:string ->
  name:string ->
  string ->
  unit
