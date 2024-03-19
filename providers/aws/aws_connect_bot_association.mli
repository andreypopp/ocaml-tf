(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type lex_bot

val lex_bot :
  ?lex_region:string prop -> name:string prop -> unit -> lex_bot

type aws_connect_bot_association

val aws_connect_bot_association :
  ?id:string prop ->
  instance_id:string prop ->
  lex_bot:lex_bot list ->
  unit ->
  aws_connect_bot_association

val yojson_of_aws_connect_bot_association :
  aws_connect_bot_association -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; instance_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_id:string prop ->
  lex_bot:lex_bot list ->
  string ->
  t
