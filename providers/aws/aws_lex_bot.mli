(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_bot__abort_statement__message
type aws_lex_bot__abort_statement
type aws_lex_bot__clarification_prompt__message
type aws_lex_bot__clarification_prompt
type aws_lex_bot__intent
type aws_lex_bot__timeouts
type aws_lex_bot

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
  ?timeouts:aws_lex_bot__timeouts ->
  child_directed:bool prop ->
  name:string prop ->
  abort_statement:aws_lex_bot__abort_statement list ->
  clarification_prompt:aws_lex_bot__clarification_prompt list ->
  intent:aws_lex_bot__intent list ->
  string ->
  t
