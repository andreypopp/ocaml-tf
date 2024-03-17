(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_data_network__timeouts
type azurerm_mobile_network_data_network

val azurerm_mobile_network_data_network :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network_data_network__timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  unit
