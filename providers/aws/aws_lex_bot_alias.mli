(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type conversation_logs__log_settings

val conversation_logs__log_settings :
  ?kms_key_arn:string prop ->
  destination:string prop ->
  log_type:string prop ->
  resource_arn:string prop ->
  unit ->
  conversation_logs__log_settings

type conversation_logs

val conversation_logs :
  iam_role_arn:string prop ->
  log_settings:conversation_logs__log_settings list ->
  unit ->
  conversation_logs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lex_bot_alias

val aws_lex_bot_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?conversation_logs:conversation_logs list ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  bot_version:string prop ->
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
  ?description:string prop ->
  ?id:string prop ->
  ?conversation_logs:conversation_logs list ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  bot_version:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?conversation_logs:conversation_logs list ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  bot_version:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
