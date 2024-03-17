(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_site__timeouts
type azurerm_mobile_network_site

val azurerm_mobile_network_site :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network_site__timeouts ->
  location:string ->
  mobile_network_id:string ->
  name:string ->
  string ->
  unit
