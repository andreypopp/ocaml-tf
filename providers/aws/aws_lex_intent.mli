(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type conclusion_statement__message

val conclusion_statement__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  conclusion_statement__message

type conclusion_statement

val conclusion_statement :
  ?response_card:string prop ->
  message:conclusion_statement__message list ->
  unit ->
  conclusion_statement

type confirmation_prompt__message

val confirmation_prompt__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  confirmation_prompt__message

type confirmation_prompt

val confirmation_prompt :
  ?response_card:string prop ->
  max_attempts:float prop ->
  message:confirmation_prompt__message list ->
  unit ->
  confirmation_prompt

type dialog_code_hook

val dialog_code_hook :
  message_version:string prop ->
  uri:string prop ->
  unit ->
  dialog_code_hook

type follow_up_prompt__prompt__message

val follow_up_prompt__prompt__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  follow_up_prompt__prompt__message

type follow_up_prompt__prompt

val follow_up_prompt__prompt :
  ?response_card:string prop ->
  max_attempts:float prop ->
  message:follow_up_prompt__prompt__message list ->
  unit ->
  follow_up_prompt__prompt

type follow_up_prompt__rejection_statement__message

val follow_up_prompt__rejection_statement__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  follow_up_prompt__rejection_statement__message

type follow_up_prompt__rejection_statement

val follow_up_prompt__rejection_statement :
  ?response_card:string prop ->
  message:follow_up_prompt__rejection_statement__message list ->
  unit ->
  follow_up_prompt__rejection_statement

type follow_up_prompt

val follow_up_prompt :
  prompt:follow_up_prompt__prompt list ->
  rejection_statement:follow_up_prompt__rejection_statement list ->
  unit ->
  follow_up_prompt

type fulfillment_activity__code_hook

val fulfillment_activity__code_hook :
  message_version:string prop ->
  uri:string prop ->
  unit ->
  fulfillment_activity__code_hook

type fulfillment_activity

val fulfillment_activity :
  ?code_hook:fulfillment_activity__code_hook list ->
  type_:string prop ->
  unit ->
  fulfillment_activity

type rejection_statement__message

val rejection_statement__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  rejection_statement__message

type rejection_statement

val rejection_statement :
  ?response_card:string prop ->
  message:rejection_statement__message list ->
  unit ->
  rejection_statement

type slot__value_elicitation_prompt__message

val slot__value_elicitation_prompt__message :
  ?group_number:float prop ->
  content:string prop ->
  content_type:string prop ->
  unit ->
  slot__value_elicitation_prompt__message

type slot__value_elicitation_prompt

val slot__value_elicitation_prompt :
  ?response_card:string prop ->
  max_attempts:float prop ->
  message:slot__value_elicitation_prompt__message list ->
  unit ->
  slot__value_elicitation_prompt

type slot

val slot :
  ?description:string prop ->
  ?priority:float prop ->
  ?response_card:string prop ->
  ?sample_utterances:string prop list ->
  ?slot_type_version:string prop ->
  ?value_elicitation_prompt:slot__value_elicitation_prompt list ->
  name:string prop ->
  slot_constraint:string prop ->
  slot_type:string prop ->
  unit ->
  slot

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lex_intent

val aws_lex_intent :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent_intent_signature:string prop ->
  ?sample_utterances:string prop list ->
  ?conclusion_statement:conclusion_statement list ->
  ?confirmation_prompt:confirmation_prompt list ->
  ?dialog_code_hook:dialog_code_hook list ->
  ?follow_up_prompt:follow_up_prompt list ->
  ?rejection_statement:rejection_statement list ->
  ?timeouts:timeouts ->
  name:string prop ->
  fulfillment_activity:fulfillment_activity list ->
  slot:slot list ->
  unit ->
  aws_lex_intent

val yojson_of_aws_lex_intent : aws_lex_intent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent_intent_signature:string prop ->
  ?sample_utterances:string prop list ->
  ?conclusion_statement:conclusion_statement list ->
  ?confirmation_prompt:confirmation_prompt list ->
  ?dialog_code_hook:dialog_code_hook list ->
  ?follow_up_prompt:follow_up_prompt list ->
  ?rejection_statement:rejection_statement list ->
  ?timeouts:timeouts ->
  name:string prop ->
  fulfillment_activity:fulfillment_activity list ->
  slot:slot list ->
  string ->
  t

val make :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent_intent_signature:string prop ->
  ?sample_utterances:string prop list ->
  ?conclusion_statement:conclusion_statement list ->
  ?confirmation_prompt:confirmation_prompt list ->
  ?dialog_code_hook:dialog_code_hook list ->
  ?follow_up_prompt:follow_up_prompt list ->
  ?rejection_statement:rejection_statement list ->
  ?timeouts:timeouts ->
  name:string prop ->
  fulfillment_activity:fulfillment_activity list ->
  slot:slot list ->
  string ->
  t Tf_core.resource
