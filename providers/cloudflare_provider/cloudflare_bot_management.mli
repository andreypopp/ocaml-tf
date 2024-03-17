(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_bot_management

val cloudflare_bot_management :
  ?auto_update_model:bool ->
  ?enable_js:bool ->
  ?fight_mode:bool ->
  ?optimize_wordpress:bool ->
  ?sbfm_definitely_automated:string ->
  ?sbfm_likely_automated:string ->
  ?sbfm_static_resource_protection:bool ->
  ?sbfm_verified_bots:string ->
  ?suppress_session_score:bool ->
  zone_id:string ->
  string ->
  unit
