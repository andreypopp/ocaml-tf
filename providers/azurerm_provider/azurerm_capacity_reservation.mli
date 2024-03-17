(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_capacity_reservation__sku
type azurerm_capacity_reservation__timeouts
type azurerm_capacity_reservation

val azurerm_capacity_reservation :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:azurerm_capacity_reservation__timeouts ->
  capacity_reservation_group_id:string prop ->
  name:string prop ->
  sku:azurerm_capacity_reservation__sku list ->
  string ->
  unit
