(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_key_pair

val aws_key_pair :
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  public_key:string prop ->
  string ->
  unit
