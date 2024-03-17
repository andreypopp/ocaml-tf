(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_bot_association__lex_bot
type aws_connect_bot_association
type t = private { id : string prop; instance_id : string prop }

val aws_connect_bot_association :
  ?id:string prop ->
  instance_id:string prop ->
  lex_bot:aws_connect_bot_association__lex_bot list ->
  string ->
  t
