(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_dps_certificate__timeouts
type azurerm_iothub_dps_certificate

val azurerm_iothub_dps_certificate :
  ?id:string prop ->
  ?is_verified:bool prop ->
  ?timeouts:azurerm_iothub_dps_certificate__timeouts ->
  certificate_content:string prop ->
  iot_dps_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
