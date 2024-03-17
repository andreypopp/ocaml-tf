(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_key_pair

val aws_lightsail_key_pair :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
