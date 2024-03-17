(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_playback_key_pair__timeouts
type aws_ivs_playback_key_pair

type t = private {
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ivs_playback_key_pair :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ivs_playback_key_pair__timeouts ->
  public_key:string prop ->
  string ->
  t
