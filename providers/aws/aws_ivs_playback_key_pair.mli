(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ivs_playback_key_pair

val aws_ivs_playback_key_pair :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  public_key:string prop ->
  unit ->
  aws_ivs_playback_key_pair

val yojson_of_aws_ivs_playback_key_pair :
  aws_ivs_playback_key_pair -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  public_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  public_key:string prop ->
  string ->
  t Tf_core.resource
