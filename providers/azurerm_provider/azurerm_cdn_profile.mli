(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_profile__timeouts
type azurerm_cdn_profile

val azurerm_cdn_profile :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cdn_profile__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  string ->
  unit
