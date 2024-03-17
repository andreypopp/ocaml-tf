(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb__frontend_ip_configuration
type azurerm_lb__timeouts
type azurerm_lb

val azurerm_lb :
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_lb__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  frontend_ip_configuration:
    azurerm_lb__frontend_ip_configuration list ->
  string ->
  unit
