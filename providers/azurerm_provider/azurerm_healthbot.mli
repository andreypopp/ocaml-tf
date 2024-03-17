(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthbot__timeouts
type azurerm_healthbot

val azurerm_healthbot :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthbot__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
