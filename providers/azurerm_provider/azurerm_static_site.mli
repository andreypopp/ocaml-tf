(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_site__identity
type azurerm_static_site__timeouts
type azurerm_static_site

val azurerm_static_site :
  ?app_settings:(string * string) list ->
  ?sku_size:string ->
  ?sku_tier:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_static_site__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_static_site__identity list ->
  string ->
  unit
