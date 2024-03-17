(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_capacity_reservation__sku
type azurerm_capacity_reservation__timeouts
type azurerm_capacity_reservation

val azurerm_capacity_reservation :
  ?id:string ->
  ?tags:(string * string) list ->
  ?zone:string ->
  ?timeouts:azurerm_capacity_reservation__timeouts ->
  capacity_reservation_group_id:string ->
  name:string ->
  sku:azurerm_capacity_reservation__sku list ->
  string ->
  unit
