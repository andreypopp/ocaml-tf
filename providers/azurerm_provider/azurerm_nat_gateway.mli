(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nat_gateway__timeouts
type azurerm_nat_gateway

val azurerm_nat_gateway :
  ?idle_timeout_in_minutes:float ->
  ?sku_name:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_nat_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
