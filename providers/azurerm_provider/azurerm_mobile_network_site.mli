(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_site__timeouts
type azurerm_mobile_network_site

val azurerm_mobile_network_site :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network_site__timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  unit
