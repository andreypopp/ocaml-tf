(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_filter

val cloudflare_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?ref:string prop ->
  expression:string prop ->
  zone_id:string prop ->
  string ->
  unit
