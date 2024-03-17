(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_test_case__test_case_conversation_turns__user_input__input__dtmf

type google_dialogflow_cx_test_case__test_case_conversation_turns__user_input__input__event

type google_dialogflow_cx_test_case__test_case_conversation_turns__user_input__input__text

type google_dialogflow_cx_test_case__test_case_conversation_turns__user_input__input

type google_dialogflow_cx_test_case__test_case_conversation_turns__user_input

type google_dialogflow_cx_test_case__test_case_conversation_turns__virtual_agent_output__current_page

type google_dialogflow_cx_test_case__test_case_conversation_turns__virtual_agent_output__text_responses

type google_dialogflow_cx_test_case__test_case_conversation_turns__virtual_agent_output__triggered_intent

type google_dialogflow_cx_test_case__test_case_conversation_turns__virtual_agent_output

type google_dialogflow_cx_test_case__test_case_conversation_turns
type google_dialogflow_cx_test_case__test_config
type google_dialogflow_cx_test_case__timeouts

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__triggered_intent = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list;  (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__status = {
  code : float prop;  (** code *)
  details : string prop;  (** details *)
  message : string prop;  (** message *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__differences = {
  description : string prop;  (** description *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__current_page = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output = {
  current_page :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__current_page
    list;
      (** current_page *)
  differences :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__differences
    list;
      (** differences *)
  session_parameters : string prop;  (** session_parameters *)
  status :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__status
    list;
      (** status *)
  text_responses :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__text_responses
    list;
      (** text_responses *)
  triggered_intent :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__triggered_intent
    list;
      (** triggered_intent *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__text = {
  text : string prop;  (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__event = {
  event : string prop;  (** event *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__dtmf = {
  digits : string prop;  (** digits *)
  finish_digit : string prop;  (** finish_digit *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input = {
  dtmf :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__dtmf
    list;
      (** dtmf *)
  event :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__event
    list;
      (** event *)
  language_code : string prop;  (** language_code *)
  text :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__text
    list;
      (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop;
      (** enable_sentiment_analysis *)
  injected_parameters : string prop;  (** injected_parameters *)
  input :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input
    list;
      (** input *)
  is_webhook_enabled : bool prop;  (** is_webhook_enabled *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns = {
  user_input :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input
    list;
      (** user_input *)
  virtual_agent_output :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output
    list;
      (** virtual_agent_output *)
}

type google_dialogflow_cx_test_case__last_test_result = {
  conversation_turns :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns
    list;
      (** conversation_turns *)
  environment : string prop;  (** environment *)
  name : string prop;  (** name *)
  test_result : string prop;  (** test_result *)
  test_time : string prop;  (** test_time *)
}

type google_dialogflow_cx_test_case

type t = private {
  creation_time : string prop;
  display_name : string prop;
  id : string prop;
  last_test_result :
    google_dialogflow_cx_test_case__last_test_result list prop;
  name : string prop;
  notes : string prop;
  parent : string prop;
  tags : string list prop;
}

val google_dialogflow_cx_test_case :
  ?id:string prop ->
  ?notes:string prop ->
  ?parent:string prop ->
  ?tags:string prop list ->
  ?timeouts:google_dialogflow_cx_test_case__timeouts ->
  display_name:string prop ->
  test_case_conversation_turns:
    google_dialogflow_cx_test_case__test_case_conversation_turns list ->
  test_config:google_dialogflow_cx_test_case__test_config list ->
  string ->
  t
