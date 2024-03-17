(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway_certificate_authority__timeouts
type azurerm_api_management_gateway_certificate_authority

val azurerm_api_management_gateway_certificate_authority :
  ?is_trusted:bool ->
  ?timeouts:
    azurerm_api_management_gateway_certificate_authority__timeouts ->
  api_management_id:string ->
  certificate_name:string ->
  gateway_name:string ->
  string ->
  unit
