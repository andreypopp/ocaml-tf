(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_key_pair

val aws_key_pair :
  ?id:string ->
  ?key_name:string ->
  ?key_name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  public_key:string ->
  string ->
  unit
