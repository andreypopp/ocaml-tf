(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_fluid_relay_server__identity
type azurerm_fluid_relay_server__timeouts
type azurerm_fluid_relay_server

val azurerm_fluid_relay_server :
  ?id:string prop ->
  ?storage_sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_fluid_relay_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_fluid_relay_server__identity list ->
  string ->
  unit
