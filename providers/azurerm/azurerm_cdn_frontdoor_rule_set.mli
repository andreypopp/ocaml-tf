(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_rule_set__timeouts
type azurerm_cdn_frontdoor_rule_set

type t = private {
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_cdn_frontdoor_rule_set :
  ?id:string prop ->
  ?timeouts:azurerm_cdn_frontdoor_rule_set__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  string ->
  t
