(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network__timeouts
type azurerm_mobile_network

val azurerm_mobile_network :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network__timeouts ->
  location:string prop ->
  mobile_country_code:string prop ->
  mobile_network_code:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
