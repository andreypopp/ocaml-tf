(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_playback_key_pair__timeouts
type aws_ivs_playback_key_pair

val aws_ivs_playback_key_pair :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ivs_playback_key_pair__timeouts ->
  public_key:string prop ->
  string ->
  unit
