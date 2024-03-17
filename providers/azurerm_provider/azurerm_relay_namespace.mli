(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_namespace__timeouts
type azurerm_relay_namespace

val azurerm_relay_namespace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_relay_namespace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  unit
