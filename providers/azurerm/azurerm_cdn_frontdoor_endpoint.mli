(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_endpoint__timeouts
type azurerm_cdn_frontdoor_endpoint

type t = private {
  cdn_frontdoor_profile_id : string prop;
  enabled : bool prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val azurerm_cdn_frontdoor_endpoint :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cdn_frontdoor_endpoint__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  string ->
  t
