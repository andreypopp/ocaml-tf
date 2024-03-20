(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_settings__audio_export_gcs_destination

val advanced_settings__audio_export_gcs_destination :
  ?uri:string prop ->
  unit ->
  advanced_settings__audio_export_gcs_destination

type advanced_settings__dtmf_settings

val advanced_settings__dtmf_settings :
  ?enabled:bool prop ->
  ?finish_digit:string prop ->
  ?max_digits:float prop ->
  unit ->
  advanced_settings__dtmf_settings

type advanced_settings

val advanced_settings :
  audio_export_gcs_destination:
    advanced_settings__audio_export_gcs_destination list ->
  dtmf_settings:advanced_settings__dtmf_settings list ->
  unit ->
  advanced_settings

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
  conversation_success:
    event_handlers__trigger_fulfillment__messages__conversation_success
    list ->
  live_agent_handoff:
    event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list ->
  output_audio_text:
    event_handlers__trigger_fulfillment__messages__output_audio_text
    list ->
  play_audio:
    event_handlers__trigger_fulfillment__messages__play_audio list ->
  telephony_transfer_call:
    event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list ->
  text:event_handlers__trigger_fulfillment__messages__text list ->
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
  conditional_cases:
    event_handlers__trigger_fulfillment__conditional_cases list ->
  messages:event_handlers__trigger_fulfillment__messages list ->
  set_parameter_actions:
    event_handlers__trigger_fulfillment__set_parameter_actions list ->
  unit ->
  event_handlers__trigger_fulfillment

type event_handlers

val event_handlers :
  ?event:string prop ->
  ?target_flow:string prop ->
  ?target_page:string prop ->
  trigger_fulfillment:event_handlers__trigger_fulfillment list ->
  unit ->
  event_handlers

type nlu_settings

val nlu_settings :
  ?classification_threshold:float prop ->
  ?model_training_mode:string prop ->
  ?model_type:string prop ->
  unit ->
  nlu_settings

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
  conversation_success:
    transition_routes__trigger_fulfillment__messages__conversation_success
    list ->
  live_agent_handoff:
    transition_routes__trigger_fulfillment__messages__live_agent_handoff
    list ->
  output_audio_text:
    transition_routes__trigger_fulfillment__messages__output_audio_text
    list ->
  play_audio:
    transition_routes__trigger_fulfillment__messages__play_audio list ->
  telephony_transfer_call:
    transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    list ->
  text:transition_routes__trigger_fulfillment__messages__text list ->
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
  conditional_cases:
    transition_routes__trigger_fulfillment__conditional_cases list ->
  messages:transition_routes__trigger_fulfillment__messages list ->
  set_parameter_actions:
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
  trigger_fulfillment:transition_routes__trigger_fulfillment list ->
  unit ->
  transition_routes

type google_dialogflow_cx_flow

val google_dialogflow_cx_flow :
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_start_flow:bool prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  advanced_settings:advanced_settings list ->
  event_handlers:event_handlers list ->
  nlu_settings:nlu_settings list ->
  transition_routes:transition_routes list ->
  unit ->
  google_dialogflow_cx_flow

val yojson_of_google_dialogflow_cx_flow :
  google_dialogflow_cx_flow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_default_start_flow : bool prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  transition_route_groups : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_start_flow:bool prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  advanced_settings:advanced_settings list ->
  event_handlers:event_handlers list ->
  nlu_settings:nlu_settings list ->
  transition_routes:transition_routes list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_start_flow:bool prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?transition_route_groups:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  advanced_settings:advanced_settings list ->
  event_handlers:event_handlers list ->
  nlu_settings:nlu_settings list ->
  transition_routes:transition_routes list ->
  string ->
  t Tf_core.resource
