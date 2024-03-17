(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_certificate__timeouts
type azurerm_iothub_certificate

type t = private {
  certificate_content : string prop;
  id : string prop;
  iothub_name : string prop;
  is_verified : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_iothub_certificate :
  ?id:string prop ->
  ?is_verified:bool prop ->
  ?timeouts:azurerm_iothub_certificate__timeouts ->
  certificate_content:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
