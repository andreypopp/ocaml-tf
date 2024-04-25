(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_settings__dtmf_settings

val advanced_settings__dtmf_settings :
  ?enabled:bool prop ->
  ?finish_digit:string prop ->
  ?max_digits:float prop ->
  unit ->
  advanced_settings__dtmf_settings

type advanced_settings

val advanced_settings :
  ?dtmf_settings:advanced_settings__dtmf_settings list ->
  unit ->
  advanced_settings

type entry_fulfillment__conditional_cases

val entry_fulfillment__conditional_cases :
  ?cases:string prop -> unit -> entry_fulfillment__conditional_cases

type entry_fulfillment__messages__conversation_success

val entry_fulfillment__messages__conversation_success :
  ?metadata:string prop ->
  unit ->
  entry_fulfillment__messages__conversation_success

type entry_fulfillment__messages__live_agent_handoff

val entry_fulfillment__messages__live_agent_handoff :
  ?metadata:string prop ->
  unit ->
  entry_fulfillment__messages__live_agent_handoff

type entry_fulfillment__messages__output_audio_text

val entry_fulfillment__messages__output_audio_text :
  ?ssml:string prop ->
  ?text:string prop ->
  unit ->
  entry_fulfillment__messages__output_audio_text

type entry_fulfillment__messages__play_audio

val entry_fulfillment__messages__play_audio :
  audio_uri:string prop ->
  unit ->
  entry_fulfillment__messages__play_audio

type entry_fulfillment__messages__telephony_transfer_call

val entry_fulfillment__messages__telephony_transfer_call :
  phone_number:string prop ->
  unit ->
  entry_fulfillment__messages__telephony_transfer_call

type entry_fulfillment__messages__text

val entry_fulfillment__messages__text :
  ?text:string prop list -> unit -> entry_fulfillment__messages__text

type entry_fulfillment__messages

val entry_fulfillment__messages :
  ?channel:string prop ->
  ?payload:string prop ->
  ?conversation_success:
    entry_fulfillment__messages__conversation_success list ->
  ?live_agent_handoff:
    entry_fulfillment__messages__live_agent_handoff list ->
  ?output_audio_text:
    entry_fulfillment__messages__output_audio_text list ->
  ?play_audio:entry_fulfillment__messages__play_audio list ->
  ?telephony_transfer_call:
    entry_fulfillment__messages__telephony_transfer_call list ->
  ?text:entry_fulfillment__messages__text list ->
  unit ->
  entry_fulfillment__messages

type entry_fulfillment__set_parameter_actions

val entry_fulfillment__set_parameter_actions :
  ?parameter:string prop ->
  ?value:string prop ->
  unit ->
  entry_fulfillment__set_parameter_actions

type entry_fulfillment

val entry_fulfillment :
  ?return_partial_responses:bool prop ->
  ?tag:string prop ->
  ?webhook:string prop ->
  ?conditional_cases:entry_fulfillment__conditional_cases list ->
  ?messages:entry_fulfillment__messages list ->
  ?set_parameter_actions:
    entry_fulfillment__set_parameter_actions list ->
  unit ->
  entry_fulfillment

type event_handlers__trigger_fulfillment__conditional_cases

val event_handlers__trigger_fulfillment__conditional_cases :
  ?cases:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__conditional_cases

type event_handlers__trigger_fulfillment__messages__conversation_success

val event_handlers__trigger_fulfillment__messages__conversation_success :
  ?metadata:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__messages__conversation_success

type event_handlers__trigger_fulfillment__messages__live_agent_handoff

val event_handlers__trigger_fulfillment__messages__live_agent_handoff :
  ?metadata:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__messages__live_agent_handoff

type event_handlers__trigger_fulfillment__messages__output_audio_text

val event_handlers__trigger_fulfillment__messages__output_audio_text :
  ?ssml:string prop ->
  ?text:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__messages__output_audio_text

type event_handlers__trigger_fulfillment__messages__play_audio

val event_handlers__trigger_fulfillment__messages__play_audio :
  audio_uri:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__messages__play_audio

type event_handlers__trigger_fulfillment__messages__telephony_transfer_call

val event_handlers__trigger_fulfillment__messages__telephony_transfer_call :
  phone_number:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__messages__telephony_transfer_call

type event_handlers__trigger_fulfillment__messages__text

val event_handlers__trigger_fulfillment__messages__text :
  ?text:string prop list ->
  unit ->
  event_handlers__trigger_fulfillment__messages__text

type event_handlers__trigger_fulfillment__messages

val event_handlers__trigger_fulfillment__messages :
  ?channel:string prop ->
  ?payload:string prop ->
  ?conversation_success:
    event_handlers__trigger_fulfillment__messages__conversation_success
    list ->
  ?live_agent_handoff:
    event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list ->
  ?output_audio_text:
    event_handlers__trigger_fulfillment__messages__output_audio_text
    list ->
  ?play_audio:
    event_handlers__trigger_fulfillment__messages__play_audio list ->
  ?telephony_transfer_call:
    event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list ->
  ?text:event_handlers__trigger_fulfillment__messages__text list ->
  unit ->
  event_handlers__trigger_fulfillment__messages

type event_handlers__trigger_fulfillment__set_parameter_actions

val event_handlers__trigger_fulfillment__set_parameter_actions :
  ?parameter:string prop ->
  ?value:string prop ->
  unit ->
  event_handlers__trigger_fulfillment__set_parameter_actions

type event_handlers__trigger_fulfillment

val event_handlers__trigger_fulfillment :
  ?return_partial_responses:bool prop ->
  ?tag:string prop ->
  ?webhook:string prop ->
  ?conditional_cases:
    event_handlers__trigger_fulfillment__conditional_cases list ->
  ?messages:event_handlers__trigger_fulfillment__messages list ->
  ?set_parameter_actions:
    event_handlers__trigger_fulfillment__set_parameter_actions list ->
  unit ->
  event_handlers__trigger_fulfillment

type event_handlers

val event_handlers :
  ?event:string prop ->
  ?target_flow:string prop ->
  ?target_page:string prop ->
  ?trigger_fulfillment:event_handlers__trigger_fulfillment list ->
  unit ->
  event_handlers

type form__parameters__advanced_settings__dtmf_settings

val form__parameters__advanced_settings__dtmf_settings :
  ?enabled:bool prop ->
  ?finish_digit:string prop ->
  ?max_digits:float prop ->
  unit ->
  form__parameters__advanced_settings__dtmf_settings

type form__parameters__advanced_settings

val form__parameters__advanced_settings :
  ?dtmf_settings:
    form__parameters__advanced_settings__dtmf_settings list ->
  unit ->
  form__parameters__advanced_settings

type form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases

val form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases :
  ?cases:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success :
  ?metadata:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff :
  ?metadata:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text :
  ?ssml:string prop ->
  ?text:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio :
  audio_uri:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call :
  phone_number:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text :
  ?text:string prop list ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages

val form__parameters__fill_behavior__initial_prompt_fulfillment__messages :
  ?channel:string prop ->
  ?payload:string prop ->
  ?conversation_success:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success
    list ->
  ?live_agent_handoff:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff
    list ->
  ?output_audio_text:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text
    list ->
  ?play_audio:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio
    list ->
  ?telephony_transfer_call:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call
    list ->
  ?text:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text
    list ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__messages

type form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions

val form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions :
  ?parameter:string prop ->
  ?value:string prop ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions

type form__parameters__fill_behavior__initial_prompt_fulfillment

val form__parameters__fill_behavior__initial_prompt_fulfillment :
  ?return_partial_responses:bool prop ->
  ?tag:string prop ->
  ?webhook:string prop ->
  ?conditional_cases:
    form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases
    list ->
  ?messages:
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages
    list ->
  ?set_parameter_actions:
    form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions
    list ->
  unit ->
  form__parameters__fill_behavior__initial_prompt_fulfillment

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases :
  ?cases:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success :
  ?metadata:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff :
  ?metadata:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text :
  ?ssml:string prop ->
  ?text:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio :
  audio_uri:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call :
  phone_number:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text :
  ?text:string prop list ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages :
  ?channel:string prop ->
  ?payload:string prop ->
  ?conversation_success:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success
    list ->
  ?live_agent_handoff:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list ->
  ?output_audio_text:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text
    list ->
  ?play_audio:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio
    list ->
  ?telephony_transfer_call:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list ->
  ?text:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text
    list ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions :
  ?parameter:string prop ->
  ?value:string prop ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment

val form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment :
  ?return_partial_responses:bool prop ->
  ?tag:string prop ->
  ?webhook:string prop ->
  ?conditional_cases:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases
    list ->
  ?messages:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages
    list ->
  ?set_parameter_actions:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions
    list ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment

type form__parameters__fill_behavior__reprompt_event_handlers

val form__parameters__fill_behavior__reprompt_event_handlers :
  ?event:string prop ->
  ?target_flow:string prop ->
  ?target_page:string prop ->
  ?trigger_fulfillment:
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment
    list ->
  unit ->
  form__parameters__fill_behavior__reprompt_event_handlers

type form__parameters__fill_behavior

val form__parameters__fill_behavior :
  ?initial_prompt_fulfillment:
    form__parameters__fill_behavior__initial_prompt_fulfillment list ->
  ?reprompt_event_handlers:
    form__parameters__fill_behavior__reprompt_event_handlers list ->
  unit ->
  form__parameters__fill_behavior

type form__parameters

val form__parameters :
  ?default_value:string prop ->
  ?display_name:string prop ->
  ?entity_type:string prop ->
  ?is_list:bool prop ->
  ?redact:bool prop ->
  ?required:bool prop ->
  ?advanced_settings:form__parameters__advanced_settings list ->
  ?fill_behavior:form__parameters__fill_behavior list ->
  unit ->
  form__parameters

type form

val form : ?parameters:form__parameters list -> unit -> form

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type transition_routes__trigger_fulfillment__conditional_cases

val transition_routes__trigger_fulfillment__conditional_cases :
  ?cases:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__conditional_cases

type transition_routes__trigger_fulfillment__messages__conversation_success

val transition_routes__trigger_fulfillment__messages__conversation_success :
  ?metadata:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__messages__conversation_success

type transition_routes__trigger_fulfillment__messages__live_agent_handoff

val transition_routes__trigger_fulfillment__messages__live_agent_handoff :
  ?metadata:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__messages__live_agent_handoff

type transition_routes__trigger_fulfillment__messages__output_audio_text

val transition_routes__trigger_fulfillment__messages__output_audio_text :
  ?ssml:string prop ->
  ?text:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__messages__output_audio_text

type transition_routes__trigger_fulfillment__messages__play_audio

val transition_routes__trigger_fulfillment__messages__play_audio :
  audio_uri:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__messages__play_audio

type transition_routes__trigger_fulfillment__messages__telephony_transfer_call

val transition_routes__trigger_fulfillment__messages__telephony_transfer_call :
  phone_number:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__messages__telephony_transfer_call

type transition_routes__trigger_fulfillment__messages__text

val transition_routes__trigger_fulfillment__messages__text :
  ?text:string prop list ->
  unit ->
  transition_routes__trigger_fulfillment__messages__text

type transition_routes__trigger_fulfillment__messages

val transition_routes__trigger_fulfillment__messages :
  ?channel:string prop ->
  ?payload:string prop ->
  ?conversation_success:
    transition_routes__trigger_fulfillment__messages__conversation_success
    list ->
  ?live_agent_handoff:
    transition_routes__trigger_fulfillment__messages__live_agent_handoff
    list ->
  ?output_audio_text:
    transition_routes__trigger_fulfillment__messages__output_audio_text
    list ->
  ?play_audio:
    transition_routes__trigger_fulfillment__messages__play_audio list ->
  ?telephony_transfer_call:
    transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    list ->
  ?text:transition_routes__trigger_fulfillment__messages__text list ->
  unit ->
  transition_routes__trigger_fulfillment__messages

type transition_routes__trigger_fulfillment__set_parameter_actions

val transition_routes__trigger_fulfillment__set_parameter_actions :
  ?parameter:string prop ->
  ?value:string prop ->
  unit ->
  transition_routes__trigger_fulfillment__set_parameter_actions

type transition_routes__trigger_fulfillment

val transition_routes__trigger_fulfillment :
  ?return_partial_responses:bool prop ->
  ?tag:string prop ->
  ?webhook:string prop ->
  ?conditional_cases:
    transition_routes__trigger_fulfillment__conditional_cases list ->
  ?messages:transition_routes__trigger_fulfillment__messages list ->
  ?set_parameter_actions:
    transition_routes__trigger_fulfillment__set_parameter_actions
    list ->
  unit ->
  transition_routes__trigger_fulfillment

type transition_routes

val transition_routes :
  ?condition:string prop ->
  ?intent:string prop ->
  ?target_flow:string prop ->
  ?target_page:string prop ->
  ?trigger_fulfillment:transition_routes__trigger_fulfillment list ->
  unit ->
  transition_routes

type google_dialogflow_cx_page

val google_dialogflow_cx_page :
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?advanced_settings:advanced_settings list ->
  ?entry_fulfillment:entry_fulfillment list ->
  ?event_handlers:event_handlers list ->
  ?form:form list ->
  ?timeouts:timeouts ->
  ?transition_routes:transition_routes list ->
  display_name:string prop ->
  unit ->
  google_dialogflow_cx_page

val yojson_of_google_dialogflow_cx_page :
  google_dialogflow_cx_page -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  transition_route_groups : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?advanced_settings:advanced_settings list ->
  ?entry_fulfillment:entry_fulfillment list ->
  ?event_handlers:event_handlers list ->
  ?form:form list ->
  ?timeouts:timeouts ->
  ?transition_routes:transition_routes list ->
  display_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?advanced_settings:advanced_settings list ->
  ?entry_fulfillment:entry_fulfillment list ->
  ?event_handlers:event_handlers list ->
  ?form:form list ->
  ?timeouts:timeouts ->
  ?transition_routes:transition_routes list ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
