(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iotcentral_application__identity
type azurerm_iotcentral_application__timeouts
type azurerm_iotcentral_application

val azurerm_iotcentral_application :
  ?display_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?template:string prop ->
  ?timeouts:azurerm_iotcentral_application__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sub_domain:string prop ->
  identity:azurerm_iotcentral_application__identity list ->
  string ->
  unit
