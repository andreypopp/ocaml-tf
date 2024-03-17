(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network__timeouts
type azurerm_mobile_network

val azurerm_mobile_network :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network__timeouts ->
  location:string ->
  mobile_country_code:string ->
  mobile_network_code:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
