(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lex_bot

val aws_lex_bot :
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  unit ->
  aws_lex_bot

val yojson_of_aws_lex_bot : aws_lex_bot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  checksum : string prop;
  child_directed : bool prop;
  created_date : string prop;
  description : string prop;
  detect_sentiment : bool prop;
  enable_model_improvements : bool prop;
  failure_reason : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  last_updated_date : string prop;
  locale : string prop;
  name : string prop;
  nlu_intent_confidence_threshold : float prop;
  status : string prop;
  version : string prop;
  voice_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
