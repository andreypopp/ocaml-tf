(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_turnstile_widget

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

val cloudflare_turnstile_widget :
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
