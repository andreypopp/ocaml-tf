(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_dps_certificate__timeouts
type azurerm_iothub_dps_certificate

val azurerm_iothub_dps_certificate :
  ?is_verified:bool ->
  ?timeouts:azurerm_iothub_dps_certificate__timeouts ->
  certificate_content:string ->
  iot_dps_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
