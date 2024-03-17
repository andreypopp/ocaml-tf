(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_endpoint__timeouts
type azurerm_cdn_frontdoor_endpoint

val azurerm_cdn_frontdoor_endpoint :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cdn_frontdoor_endpoint__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  string ->
  unit
