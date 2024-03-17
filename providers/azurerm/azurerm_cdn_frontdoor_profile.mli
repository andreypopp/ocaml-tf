(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_profile__timeouts
type azurerm_cdn_frontdoor_profile

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  response_timeout_seconds : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_cdn_frontdoor_profile :
  ?id:string prop ->
  ?response_timeout_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cdn_frontdoor_profile__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
