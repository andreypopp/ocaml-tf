(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_profile__timeouts
type azurerm_cdn_profile

val azurerm_cdn_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cdn_profile__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  unit
