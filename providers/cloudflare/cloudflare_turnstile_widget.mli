(** The [Turnstile Widget](https://developers.cloudflare.com/turnstile/) resource allows you to manage Cloudflare Turnstile Widgets.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_turnstile_widget

val cloudflare_turnstile_widget :
  ?bot_fight_mode:bool prop ->
  ?id:string prop ->
  ?offlabel:bool prop ->
  ?region:string prop ->
  account_id:string prop ->
  domains:string prop list ->
  mode:string prop ->
  name:string prop ->
  unit ->
  cloudflare_turnstile_widget

val yojson_of_cloudflare_turnstile_widget :
  cloudflare_turnstile_widget -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  bot_fight_mode : bool prop;
  domains : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  offlabel : bool prop;
  region : string prop;
  secret : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bot_fight_mode:bool prop ->
  ?id:string prop ->
  ?offlabel:bool prop ->
  ?region:string prop ->
  account_id:string prop ->
  domains:string prop list ->
  mode:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?bot_fight_mode:bool prop ->
  ?id:string prop ->
  ?offlabel:bool prop ->
  ?region:string prop ->
  account_id:string prop ->
  domains:string prop list ->
  mode:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
