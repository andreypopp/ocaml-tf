(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_endpoint

val azurerm_cdn_frontdoor_endpoint :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_endpoint

val yojson_of_azurerm_cdn_frontdoor_endpoint :
  azurerm_cdn_frontdoor_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_profile_id : string prop;
  enabled : bool prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  string ->
  t
