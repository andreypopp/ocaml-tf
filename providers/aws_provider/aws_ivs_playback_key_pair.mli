(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_playback_key_pair__timeouts
type aws_ivs_playback_key_pair

val aws_ivs_playback_key_pair :
  ?id:string ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ivs_playback_key_pair__timeouts ->
  public_key:string ->
  string ->
  unit
