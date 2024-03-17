(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_namespace__timeouts
type azurerm_relay_namespace

val azurerm_relay_namespace :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_relay_namespace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
