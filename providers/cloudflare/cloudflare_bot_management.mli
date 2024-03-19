(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_bot_management

val cloudflare_bot_management :
  ?auto_update_model:bool prop ->
  ?enable_js:bool prop ->
  ?fight_mode:bool prop ->
  ?id:string prop ->
  ?optimize_wordpress:bool prop ->
  ?sbfm_definitely_automated:string prop ->
  ?sbfm_likely_automated:string prop ->
  ?sbfm_static_resource_protection:bool prop ->
  ?sbfm_verified_bots:string prop ->
  ?suppress_session_score:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_bot_management

val yojson_of_cloudflare_bot_management :
  cloudflare_bot_management -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_update_model : bool prop;
  enable_js : bool prop;
  fight_mode : bool prop;
  id : string prop;
  optimize_wordpress : bool prop;
  sbfm_definitely_automated : string prop;
  sbfm_likely_automated : string prop;
  sbfm_static_resource_protection : bool prop;
  sbfm_verified_bots : string prop;
  suppress_session_score : bool prop;
  using_latest_model : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_update_model:bool prop ->
  ?enable_js:bool prop ->
  ?fight_mode:bool prop ->
  ?id:string prop ->
  ?optimize_wordpress:bool prop ->
  ?sbfm_definitely_automated:string prop ->
  ?sbfm_likely_automated:string prop ->
  ?sbfm_static_resource_protection:bool prop ->
  ?sbfm_verified_bots:string prop ->
  ?suppress_session_score:bool prop ->
  zone_id:string prop ->
  string ->
  t
