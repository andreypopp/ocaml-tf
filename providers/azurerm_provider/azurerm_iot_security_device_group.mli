(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_security_device_group__allow_rule
type azurerm_iot_security_device_group__range_rule
type azurerm_iot_security_device_group__timeouts
type azurerm_iot_security_device_group

val azurerm_iot_security_device_group :
  ?id:string prop ->
  ?timeouts:azurerm_iot_security_device_group__timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  allow_rule:azurerm_iot_security_device_group__allow_rule list ->
  range_rule:azurerm_iot_security_device_group__range_rule list ->
  string ->
  unit
