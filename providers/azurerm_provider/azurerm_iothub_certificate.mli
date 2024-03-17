(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_certificate__timeouts
type azurerm_iothub_certificate

val azurerm_iothub_certificate :
  ?id:string ->
  ?is_verified:bool ->
  ?timeouts:azurerm_iothub_certificate__timeouts ->
  certificate_content:string ->
  iothub_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
