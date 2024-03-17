(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_bot_alias__conversation_logs__log_settings
type aws_lex_bot_alias__conversation_logs
type aws_lex_bot_alias__timeouts
type aws_lex_bot_alias

val aws_lex_bot_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_lex_bot_alias__timeouts ->
  bot_name:string prop ->
  bot_version:string prop ->
  name:string prop ->
  conversation_logs:aws_lex_bot_alias__conversation_logs list ->
  string ->
  unit
