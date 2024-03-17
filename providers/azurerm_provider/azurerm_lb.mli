(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb__frontend_ip_configuration
type azurerm_lb__timeouts
type azurerm_lb

val azurerm_lb :
  ?edge_zone:string ->
  ?id:string ->
  ?sku:string ->
  ?sku_tier:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_lb__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  frontend_ip_configuration:
    azurerm_lb__frontend_ip_configuration list ->
  string ->
  unit
