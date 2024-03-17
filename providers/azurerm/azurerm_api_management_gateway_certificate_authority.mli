(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway_certificate_authority__timeouts
type azurerm_api_management_gateway_certificate_authority

type t = private {
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop;
  is_trusted : bool prop;
}

val azurerm_api_management_gateway_certificate_authority :
  ?id:string prop ->
  ?is_trusted:bool prop ->
  ?timeouts:
    azurerm_api_management_gateway_certificate_authority__timeouts ->
  api_management_id:string prop ->
  certificate_name:string prop ->
  gateway_name:string prop ->
  string ->
  t
