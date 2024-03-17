(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_custom_ip_prefix__timeouts
type azurerm_custom_ip_prefix

val azurerm_custom_ip_prefix :
  ?commissioning_enabled:bool ->
  ?internet_advertising_disabled:bool ->
  ?parent_custom_ip_prefix_id:string ->
  ?roa_validity_end_date:string ->
  ?tags:(string * string) list ->
  ?wan_validation_signed_message:string ->
  ?zones:string list ->
  ?timeouts:azurerm_custom_ip_prefix__timeouts ->
  cidr:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
