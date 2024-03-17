(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_data_network__timeouts
type azurerm_mobile_network_data_network

val azurerm_mobile_network_data_network :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network_data_network__timeouts ->
  location:string ->
  mobile_network_id:string ->
  name:string ->
  string ->
  unit
