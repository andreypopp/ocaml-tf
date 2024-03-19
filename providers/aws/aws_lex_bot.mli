(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type abort_statement__message

val abort_statement__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  abort_statement__message

type abort_statement

val abort_statement :
  ?response_card:string prop ->
  message:abort_statement__message list ->
  unit ->
  abort_statement

type clarification_prompt__message

val clarification_prompt__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  clarification_prompt__message

type clarification_prompt

val clarification_prompt :
  ?response_card:string prop ->
  max_attempts:float prop ->
  message:clarification_prompt__message list ->
  unit ->
  clarification_prompt

type intent

val intent :
  intent_name:string prop ->
  intent_version:string prop ->
  unit ->
  intent

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lex_bot

val aws_lex_bot :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?detect_sentiment:bool prop ->
  ?enable_model_improvements:bool prop ->
  ?id:string prop ->
  ?idle_session_ttl_in_seconds:float prop ->
  ?locale:string prop ->
  ?nlu_intent_confidence_threshold:float prop ->
  ?process_behavior:string prop ->
  ?voice_id:string prop ->
  ?timeouts:timeouts ->
  child_directed:bool prop ->
  name:string prop ->
  abort_statement:abort_statement list ->
  clarification_prompt:clarification_prompt list ->
  intent:intent list ->
  unit ->
  aws_lex_bot

val yojson_of_aws_lex_bot : aws_lex_bot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  checksum : string prop;
  child_directed : bool prop;
  create_version : bool prop;
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
  process_behavior : string prop;
  status : string prop;
  version : string prop;
  voice_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_version:bool prop ->
  ?description:string prop ->
  ?detect_sentiment:bool prop ->
  ?enable_model_improvements:bool prop ->
  ?id:string prop ->
  ?idle_session_ttl_in_seconds:float prop ->
  ?locale:string prop ->
  ?nlu_intent_confidence_threshold:float prop ->
  ?process_behavior:string prop ->
  ?voice_id:string prop ->
  ?timeouts:timeouts ->
  child_directed:bool prop ->
  name:string prop ->
  abort_statement:abort_statement list ->
  clarification_prompt:clarification_prompt list ->
  intent:intent list ->
  string ->
  t
