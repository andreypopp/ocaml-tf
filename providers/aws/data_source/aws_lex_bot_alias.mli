(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lex_bot_alias

val aws_lex_bot_alias :
  ?id:string prop ->
  bot_name:string prop ->
  name:string prop ->
  unit ->
  aws_lex_bot_alias

val yojson_of_aws_lex_bot_alias : aws_lex_bot_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  bot_name : string prop;
  bot_version : string prop;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bot_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  bot_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
