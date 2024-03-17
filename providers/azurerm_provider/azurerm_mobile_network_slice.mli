(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_slice__single_network_slice_selection_assistance_information

type azurerm_mobile_network_slice__timeouts
type azurerm_mobile_network_slice

val azurerm_mobile_network_slice :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network_slice__timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  single_network_slice_selection_assistance_information:
    azurerm_mobile_network_slice__single_network_slice_selection_assistance_information
    list ->
  string ->
  unit
