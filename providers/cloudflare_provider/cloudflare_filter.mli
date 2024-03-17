(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_filter

type t = private {
  description : string prop;
  expression : string prop;
  id : string prop;
  paused : bool prop;
  ref : string prop;
  zone_id : string prop;
}

val cloudflare_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?ref:string prop ->
  expression:string prop ->
  zone_id:string prop ->
  string ->
  t
