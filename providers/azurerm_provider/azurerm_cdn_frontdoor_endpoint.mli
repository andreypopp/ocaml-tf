(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_endpoint__timeouts
type azurerm_cdn_frontdoor_endpoint

val azurerm_cdn_frontdoor_endpoint :
  ?enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cdn_frontdoor_endpoint__timeouts ->
  cdn_frontdoor_profile_id:string ->
  name:string ->
  string ->
  unit
