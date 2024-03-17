(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_capacity_reservation_group__timeouts
type azurerm_capacity_reservation_group

val azurerm_capacity_reservation_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_capacity_reservation_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
