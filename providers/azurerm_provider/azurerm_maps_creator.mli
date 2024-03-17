(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maps_creator__timeouts
type azurerm_maps_creator

val azurerm_maps_creator :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_maps_creator__timeouts ->
  location:string ->
  maps_account_id:string ->
  name:string ->
  storage_units:float ->
  string ->
  unit
