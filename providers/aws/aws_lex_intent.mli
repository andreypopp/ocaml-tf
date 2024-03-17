(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_intent__conclusion_statement__message
type aws_lex_intent__conclusion_statement
type aws_lex_intent__confirmation_prompt__message
type aws_lex_intent__confirmation_prompt
type aws_lex_intent__dialog_code_hook
type aws_lex_intent__follow_up_prompt__prompt__message
type aws_lex_intent__follow_up_prompt__prompt
type aws_lex_intent__follow_up_prompt__rejection_statement__message
type aws_lex_intent__follow_up_prompt__rejection_statement
type aws_lex_intent__follow_up_prompt
type aws_lex_intent__fulfillment_activity__code_hook
type aws_lex_intent__fulfillment_activity
type aws_lex_intent__rejection_statement__message
type aws_lex_intent__rejection_statement
type aws_lex_intent__slot__value_elicitation_prompt__message
type aws_lex_intent__slot__value_elicitation_prompt
type aws_lex_intent__slot
type aws_lex_intent__timeouts
type aws_lex_intent

type t = private {
  arn : string prop;
  checksum : string prop;
  create_version : bool prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  parent_intent_signature : string prop;
  sample_utterances : string list prop;
  version : string prop;
}

val aws_lex_intent :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent_intent_signature:string prop ->
  ?sample_utterances:string prop list ->
  ?timeouts:aws_lex_intent__timeouts ->
  name:string prop ->
  conclusion_statement:aws_lex_intent__conclusion_statement list ->
  confirmation_prompt:aws_lex_intent__confirmation_prompt list ->
  dialog_code_hook:aws_lex_intent__dialog_code_hook list ->
  follow_up_prompt:aws_lex_intent__follow_up_prompt list ->
  fulfillment_activity:aws_lex_intent__fulfillment_activity list ->
  rejection_statement:aws_lex_intent__rejection_statement list ->
  slot:aws_lex_intent__slot list ->
  string ->
  t
