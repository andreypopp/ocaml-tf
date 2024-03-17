(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iotcentral_application__identity
type azurerm_iotcentral_application__timeouts
type azurerm_iotcentral_application

val azurerm_iotcentral_application :
  ?display_name:string ->
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?template:string ->
  ?timeouts:azurerm_iotcentral_application__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sub_domain:string ->
  identity:azurerm_iotcentral_application__identity list ->
  string ->
  unit
