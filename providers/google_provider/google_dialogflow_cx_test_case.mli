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
  display_name : string;  (** display_name *)
  name : string;  (** name *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__text_responses = {
  text : string list;  (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__status = {
  code : float;  (** code *)
  details : string;  (** details *)
  message : string;  (** message *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__differences = {
  description : string;  (** description *)
  type_ : string; [@key "type"]  (** type *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__virtual_agent_output__current_page = {
  display_name : string;  (** display_name *)
  name : string;  (** name *)
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
  session_parameters : string;  (** session_parameters *)
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
  text : string;  (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__event = {
  event : string;  (** event *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__dtmf = {
  digits : string;  (** digits *)
  finish_digit : string;  (** finish_digit *)
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
  language_code : string;  (** language_code *)
  text :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input__text
    list;
      (** text *)
}

type google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input = {
  enable_sentiment_analysis : bool;  (** enable_sentiment_analysis *)
  injected_parameters : string;  (** injected_parameters *)
  input :
    google_dialogflow_cx_test_case__last_test_result__conversation_turns__user_input__input
    list;
      (** input *)
  is_webhook_enabled : bool;  (** is_webhook_enabled *)
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
  environment : string;  (** environment *)
  name : string;  (** name *)
  test_result : string;  (** test_result *)
  test_time : string;  (** test_time *)
}

type google_dialogflow_cx_test_case

val google_dialogflow_cx_test_case :
  ?id:string ->
  ?notes:string ->
  ?parent:string ->
  ?tags:string list ->
  ?timeouts:google_dialogflow_cx_test_case__timeouts ->
  display_name:string ->
  test_case_conversation_turns:
    google_dialogflow_cx_test_case__test_case_conversation_turns list ->
  test_config:google_dialogflow_cx_test_case__test_config list ->
  string ->
  unit
