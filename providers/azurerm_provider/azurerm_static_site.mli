(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_site__identity
type azurerm_static_site__timeouts
type azurerm_static_site

val azurerm_static_site :
  ?app_settings:(string * string prop) list ->
  ?id:string prop ->
  ?sku_size:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_static_site__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_static_site__identity list ->
  string ->
  unit
