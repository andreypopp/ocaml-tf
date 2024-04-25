(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type last_test_result__conversation_turns__virtual_agent_output__triggered_intent = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}

type last_test_result__conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list;  (** text *)
}

type last_test_result__conversation_turns__virtual_agent_output__status = {
  code : float prop;  (** code *)
  details : string prop;  (** details *)
  message : string prop;  (** message *)
}

type last_test_result__conversation_turns__virtual_agent_output__differences = {
  description : string prop;  (** description *)
  type_ : string prop; [@key "type"]  (** type *)
}

type last_test_result__conversation_turns__virtual_agent_output__current_page = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}

type last_test_result__conversation_turns__virtual_agent_output = {
  current_page :
    last_test_result__conversation_turns__virtual_agent_output__current_page
    list;
      (** current_page *)
  differences :
    last_test_result__conversation_turns__virtual_agent_output__differences
    list;
      (** differences *)
  session_parameters : string prop;  (** session_parameters *)
  status :
    last_test_result__conversation_turns__virtual_agent_output__status
    list;
      (** status *)
  text_responses :
    last_test_result__conversation_turns__virtual_agent_output__text_responses
    list;
      (** text_responses *)
  triggered_intent :
    last_test_result__conversation_turns__virtual_agent_output__triggered_intent
    list;
      (** triggered_intent *)
}

type last_test_result__conversation_turns__user_input__input__text = {
  text : string prop;  (** text *)
}

type last_test_result__conversation_turns__user_input__input__event = {
  event : string prop;  (** event *)
}

type last_test_result__conversation_turns__user_input__input__dtmf = {
  digits : string prop;  (** digits *)
  finish_digit : string prop;  (** finish_digit *)
}

type last_test_result__conversation_turns__user_input__input = {
  dtmf :
    last_test_result__conversation_turns__user_input__input__dtmf
    list;
      (** dtmf *)
  event :
    last_test_result__conversation_turns__user_input__input__event
    list;
      (** event *)
  language_code : string prop;  (** language_code *)
  text :
    last_test_result__conversation_turns__user_input__input__text
    list;
      (** text *)
}

type last_test_result__conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop;
      (** enable_sentiment_analysis *)
  injected_parameters : string prop;  (** injected_parameters *)
  input :
    last_test_result__conversation_turns__user_input__input list;
      (** input *)
  is_webhook_enabled : bool prop;  (** is_webhook_enabled *)
}

type last_test_result__conversation_turns = {
  user_input : last_test_result__conversation_turns__user_input list;
      (** user_input *)
  virtual_agent_output :
    last_test_result__conversation_turns__virtual_agent_output list;
      (** virtual_agent_output *)
}

type last_test_result = {
  conversation_turns : last_test_result__conversation_turns list;
      (** conversation_turns *)
  environment : string prop;  (** environment *)
  name : string prop;  (** name *)
  test_result : string prop;  (** test_result *)
  test_time : string prop;  (** test_time *)
}

type test_case_conversation_turns__user_input__input__dtmf

val test_case_conversation_turns__user_input__input__dtmf :
  ?digits:string prop ->
  ?finish_digit:string prop ->
  unit ->
  test_case_conversation_turns__user_input__input__dtmf

type test_case_conversation_turns__user_input__input__event

val test_case_conversation_turns__user_input__input__event :
  event:string prop ->
  unit ->
  test_case_conversation_turns__user_input__input__event

type test_case_conversation_turns__user_input__input__text

val test_case_conversation_turns__user_input__input__text :
  text:string prop ->
  unit ->
  test_case_conversation_turns__user_input__input__text

type test_case_conversation_turns__user_input__input

val test_case_conversation_turns__user_input__input :
  ?language_code:string prop ->
  ?dtmf:test_case_conversation_turns__user_input__input__dtmf list ->
  ?event:test_case_conversation_turns__user_input__input__event list ->
  ?text:test_case_conversation_turns__user_input__input__text list ->
  unit ->
  test_case_conversation_turns__user_input__input

type test_case_conversation_turns__user_input

val test_case_conversation_turns__user_input :
  ?enable_sentiment_analysis:bool prop ->
  ?injected_parameters:string prop ->
  ?is_webhook_enabled:bool prop ->
  ?input:test_case_conversation_turns__user_input__input list ->
  unit ->
  test_case_conversation_turns__user_input

type test_case_conversation_turns__virtual_agent_output__current_page

val test_case_conversation_turns__virtual_agent_output__current_page :
  ?name:string prop ->
  unit ->
  test_case_conversation_turns__virtual_agent_output__current_page

type test_case_conversation_turns__virtual_agent_output__text_responses

val test_case_conversation_turns__virtual_agent_output__text_responses :
  ?text:string prop list ->
  unit ->
  test_case_conversation_turns__virtual_agent_output__text_responses

type test_case_conversation_turns__virtual_agent_output__triggered_intent

val test_case_conversation_turns__virtual_agent_output__triggered_intent :
  ?name:string prop ->
  unit ->
  test_case_conversation_turns__virtual_agent_output__triggered_intent

type test_case_conversation_turns__virtual_agent_output

val test_case_conversation_turns__virtual_agent_output :
  ?session_parameters:string prop ->
  ?current_page:
    test_case_conversation_turns__virtual_agent_output__current_page
    list ->
  ?text_responses:
    test_case_conversation_turns__virtual_agent_output__text_responses
    list ->
  ?triggered_intent:
    test_case_conversation_turns__virtual_agent_output__triggered_intent
    list ->
  unit ->
  test_case_conversation_turns__virtual_agent_output

type test_case_conversation_turns

val test_case_conversation_turns :
  ?user_input:test_case_conversation_turns__user_input list ->
  ?virtual_agent_output:
    test_case_conversation_turns__virtual_agent_output list ->
  unit ->
  test_case_conversation_turns

type test_config

val test_config :
  ?flow:string prop ->
  ?page:string prop ->
  ?tracking_parameters:string prop list ->
  unit ->
  test_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_cx_test_case

val google_dialogflow_cx_test_case :
  ?id:string prop ->
  ?notes:string prop ->
  ?parent:string prop ->
  ?tags:string prop list ->
  ?test_case_conversation_turns:test_case_conversation_turns list ->
  ?test_config:test_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_dialogflow_cx_test_case

val yojson_of_google_dialogflow_cx_test_case :
  google_dialogflow_cx_test_case -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_time : string prop;
  display_name : string prop;
  id : string prop;
  last_test_result : last_test_result list prop;
  name : string prop;
  notes : string prop;
  parent : string prop;
  tags : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?notes:string prop ->
  ?parent:string prop ->
  ?tags:string prop list ->
  ?test_case_conversation_turns:test_case_conversation_turns list ->
  ?test_config:test_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?notes:string prop ->
  ?parent:string prop ->
  ?tags:string prop list ->
  ?test_case_conversation_turns:test_case_conversation_turns list ->
  ?test_config:test_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
