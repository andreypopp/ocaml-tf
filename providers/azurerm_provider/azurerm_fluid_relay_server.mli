(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_fluid_relay_server__identity
type azurerm_fluid_relay_server__timeouts
type azurerm_fluid_relay_server

val azurerm_fluid_relay_server :
  ?id:string ->
  ?storage_sku:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_fluid_relay_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_fluid_relay_server__identity list ->
  string ->
  unit
