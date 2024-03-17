(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_bot__abort_statement__message
type aws_lex_bot__abort_statement
type aws_lex_bot__clarification_prompt__message
type aws_lex_bot__clarification_prompt
type aws_lex_bot__intent
type aws_lex_bot__timeouts
type aws_lex_bot

val aws_lex_bot :
  ?create_version:bool ->
  ?description:string ->
  ?detect_sentiment:bool ->
  ?enable_model_improvements:bool ->
  ?idle_session_ttl_in_seconds:float ->
  ?locale:string ->
  ?nlu_intent_confidence_threshold:float ->
  ?process_behavior:string ->
  ?timeouts:aws_lex_bot__timeouts ->
  child_directed:bool ->
  name:string ->
  abort_statement:aws_lex_bot__abort_statement list ->
  clarification_prompt:aws_lex_bot__clarification_prompt list ->
  intent:aws_lex_bot__intent list ->
  string ->
  unit
