(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type cloudflare_web_analytics_rule

val cloudflare_web_analytics_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  host:string prop ->
  inclusive:bool prop ->
  is_paused:bool prop ->
  paths:string prop list ->
  ruleset_id:string prop ->
  unit ->
  cloudflare_web_analytics_rule

val yojson_of_cloudflare_web_analytics_rule :
  cloudflare_web_analytics_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  host : string prop;
  id : string prop;
  inclusive : bool prop;
  is_paused : bool prop;
  paths : string list prop;
  ruleset_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  host:string prop ->
  inclusive:bool prop ->
  is_paused:bool prop ->
  paths:string prop list ->
  ruleset_id:string prop ->
  string ->
  t
