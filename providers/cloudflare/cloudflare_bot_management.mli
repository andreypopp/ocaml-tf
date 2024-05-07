(** Provides a resource to configure Bot Management.

Specifically, this resource can be used to manage:

- **Bot Fight Mode**
- **Super Bot Fight Mode**
- **Bot Management for Enterprise**
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
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
  t Tf_core.resource
