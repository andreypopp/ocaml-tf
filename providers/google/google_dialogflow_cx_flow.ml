(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_settings__audio_export_gcs_destination = {
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : advanced_settings__audio_export_gcs_destination) -> ()

let yojson_of_advanced_settings__audio_export_gcs_destination =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_settings__audio_export_gcs_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings__audio_export_gcs_destination

[@@@deriving.end]

type advanced_settings__dtmf_settings = {
  enabled : bool prop option; [@option]
  finish_digit : string prop option; [@option]
  max_digits : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_settings__dtmf_settings) -> ()

let yojson_of_advanced_settings__dtmf_settings =
  (function
   | {
       enabled = v_enabled;
       finish_digit = v_finish_digit;
       max_digits = v_max_digits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_digits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_digits", arg in
             bnd :: bnds
       in
       let bnds =
         match v_finish_digit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "finish_digit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_settings__dtmf_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings__dtmf_settings

[@@@deriving.end]

type advanced_settings = {
  audio_export_gcs_destination :
    advanced_settings__audio_export_gcs_destination list;
  dtmf_settings : advanced_settings__dtmf_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_settings) -> ()

let yojson_of_advanced_settings =
  (function
   | {
       audio_export_gcs_destination = v_audio_export_gcs_destination;
       dtmf_settings = v_dtmf_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_settings__dtmf_settings
             v_dtmf_settings
         in
         ("dtmf_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_settings__audio_export_gcs_destination
             v_audio_export_gcs_destination
         in
         ("audio_export_gcs_destination", arg) :: bnds
       in
       `Assoc bnds
    : advanced_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings

[@@@deriving.end]

type event_handlers__trigger_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_handlers__trigger_fulfillment__conditional_cases) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__conditional_cases
    =
  (function
   | { cases = v_cases } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cases", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__conditional_cases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__conditional_cases

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       event_handlers__trigger_fulfillment__messages__conversation_success) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__messages__conversation_success
    =
  (function
   | { metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__conversation_success ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__messages__conversation_success

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       event_handlers__trigger_fulfillment__messages__live_agent_handoff) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    =
  (function
   | { metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__live_agent_handoff ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__messages__live_agent_handoff

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
  text : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       event_handlers__trigger_fulfillment__messages__output_audio_text) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__messages__output_audio_text
    =
  (function
   | { ssml = v_ssml; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssml with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssml", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__output_audio_text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__messages__output_audio_text

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__play_audio = {
  audio_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_handlers__trigger_fulfillment__messages__play_audio) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__messages__play_audio
    =
  (function
   | { audio_uri = v_audio_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audio_uri in
         ("audio_uri", arg) :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__play_audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__messages__play_audio

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       event_handlers__trigger_fulfillment__messages__telephony_transfer_call) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    =
  (function
   | { phone_number = v_phone_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__telephony_transfer_call ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__messages__telephony_transfer_call

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages__text = {
  text : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_handlers__trigger_fulfillment__messages__text) -> ()

let yojson_of_event_handlers__trigger_fulfillment__messages__text =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages__text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handlers__trigger_fulfillment__messages__text

[@@@deriving.end]

type event_handlers__trigger_fulfillment__messages = {
  channel : string prop option; [@option]
  payload : string prop option; [@option]
  conversation_success :
    event_handlers__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    event_handlers__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    event_handlers__trigger_fulfillment__messages__play_audio list;
  telephony_transfer_call :
    event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text : event_handlers__trigger_fulfillment__messages__text list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_handlers__trigger_fulfillment__messages) -> ()

let yojson_of_event_handlers__trigger_fulfillment__messages =
  (function
   | {
       channel = v_channel;
       payload = v_payload;
       conversation_success = v_conversation_success;
       live_agent_handoff = v_live_agent_handoff;
       output_audio_text = v_output_audio_text;
       play_audio = v_play_audio;
       telephony_transfer_call = v_telephony_transfer_call;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__text
             v_text
         in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
             v_telephony_transfer_call
         in
         ("telephony_transfer_call", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__play_audio
             v_play_audio
         in
         ("play_audio", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__output_audio_text
             v_output_audio_text
         in
         ("output_audio_text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__live_agent_handoff
             v_live_agent_handoff
         in
         ("live_agent_handoff", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages__conversation_success
             v_conversation_success
         in
         ("conversation_success", arg) :: bnds
       in
       let bnds =
         match v_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "channel", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__messages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handlers__trigger_fulfillment__messages

[@@@deriving.end]

type event_handlers__trigger_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_handlers__trigger_fulfillment__set_parameter_actions) ->
  ()

let yojson_of_event_handlers__trigger_fulfillment__set_parameter_actions
    =
  (function
   | { parameter = v_parameter; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment__set_parameter_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_handlers__trigger_fulfillment__set_parameter_actions

[@@@deriving.end]

type event_handlers__trigger_fulfillment = {
  return_partial_responses : bool prop option; [@option]
  tag : string prop option; [@option]
  webhook : string prop option; [@option]
  conditional_cases :
    event_handlers__trigger_fulfillment__conditional_cases list;
  messages : event_handlers__trigger_fulfillment__messages list;
  set_parameter_actions :
    event_handlers__trigger_fulfillment__set_parameter_actions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_handlers__trigger_fulfillment) -> ()

let yojson_of_event_handlers__trigger_fulfillment =
  (function
   | {
       return_partial_responses = v_return_partial_responses;
       tag = v_tag;
       webhook = v_webhook;
       conditional_cases = v_conditional_cases;
       messages = v_messages;
       set_parameter_actions = v_set_parameter_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__set_parameter_actions
             v_set_parameter_actions
         in
         ("set_parameter_actions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__messages
             v_messages
         in
         ("messages", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment__conditional_cases
             v_conditional_cases
         in
         ("conditional_cases", arg) :: bnds
       in
       let bnds =
         match v_webhook with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_return_partial_responses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_partial_responses", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers__trigger_fulfillment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handlers__trigger_fulfillment

[@@@deriving.end]

type event_handlers = {
  event : string prop option; [@option]
  target_flow : string prop option; [@option]
  target_page : string prop option; [@option]
  trigger_fulfillment : event_handlers__trigger_fulfillment list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_handlers) -> ()

let yojson_of_event_handlers =
  (function
   | {
       event = v_event;
       target_flow = v_target_flow;
       target_page = v_target_page;
       trigger_fulfillment = v_trigger_fulfillment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_handlers__trigger_fulfillment
             v_trigger_fulfillment
         in
         ("trigger_fulfillment", arg) :: bnds
       in
       let bnds =
         match v_target_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_flow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_flow", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handlers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handlers

[@@@deriving.end]

type nlu_settings = {
  classification_threshold : float prop option; [@option]
  model_training_mode : string prop option; [@option]
  model_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nlu_settings) -> ()

let yojson_of_nlu_settings =
  (function
   | {
       classification_threshold = v_classification_threshold;
       model_training_mode = v_model_training_mode;
       model_type = v_model_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_model_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_model_training_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_training_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "classification_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : nlu_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nlu_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type transition_routes__trigger_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : transition_routes__trigger_fulfillment__conditional_cases) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__conditional_cases
    =
  (function
   | { cases = v_cases } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cases", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__conditional_cases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__conditional_cases

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__messages__conversation_success) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__conversation_success
    =
  (function
   | { metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__conversation_success ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__conversation_success

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__messages__live_agent_handoff) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__live_agent_handoff
    =
  (function
   | { metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__live_agent_handoff ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__live_agent_handoff

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
  text : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__messages__output_audio_text) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__output_audio_text
    =
  (function
   | { ssml = v_ssml; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssml with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssml", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__output_audio_text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__output_audio_text

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__play_audio = {
  audio_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__messages__play_audio) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__play_audio
    =
  (function
   | { audio_uri = v_audio_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audio_uri in
         ("audio_uri", arg) :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__play_audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__play_audio

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__messages__telephony_transfer_call) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    =
  (function
   | { phone_number = v_phone_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__telephony_transfer_call ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__telephony_transfer_call

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages__text = {
  text : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : transition_routes__trigger_fulfillment__messages__text) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__messages__text
    =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages__text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__messages__text

[@@@deriving.end]

type transition_routes__trigger_fulfillment__messages = {
  channel : string prop option; [@option]
  payload : string prop option; [@option]
  conversation_success :
    transition_routes__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    transition_routes__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    transition_routes__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    transition_routes__trigger_fulfillment__messages__play_audio list;
  telephony_transfer_call :
    transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text : transition_routes__trigger_fulfillment__messages__text list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : transition_routes__trigger_fulfillment__messages) -> ()

let yojson_of_transition_routes__trigger_fulfillment__messages =
  (function
   | {
       channel = v_channel;
       payload = v_payload;
       conversation_success = v_conversation_success;
       live_agent_handoff = v_live_agent_handoff;
       output_audio_text = v_output_audio_text;
       play_audio = v_play_audio;
       telephony_transfer_call = v_telephony_transfer_call;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__text
             v_text
         in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__telephony_transfer_call
             v_telephony_transfer_call
         in
         ("telephony_transfer_call", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__play_audio
             v_play_audio
         in
         ("play_audio", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__output_audio_text
             v_output_audio_text
         in
         ("output_audio_text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__live_agent_handoff
             v_live_agent_handoff
         in
         ("live_agent_handoff", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages__conversation_success
             v_conversation_success
         in
         ("conversation_success", arg) :: bnds
       in
       let bnds =
         match v_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "channel", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__messages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transition_routes__trigger_fulfillment__messages

[@@@deriving.end]

type transition_routes__trigger_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transition_routes__trigger_fulfillment__set_parameter_actions) ->
  ()

let yojson_of_transition_routes__trigger_fulfillment__set_parameter_actions
    =
  (function
   | { parameter = v_parameter; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment__set_parameter_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transition_routes__trigger_fulfillment__set_parameter_actions

[@@@deriving.end]

type transition_routes__trigger_fulfillment = {
  return_partial_responses : bool prop option; [@option]
  tag : string prop option; [@option]
  webhook : string prop option; [@option]
  conditional_cases :
    transition_routes__trigger_fulfillment__conditional_cases list;
  messages : transition_routes__trigger_fulfillment__messages list;
  set_parameter_actions :
    transition_routes__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transition_routes__trigger_fulfillment) -> ()

let yojson_of_transition_routes__trigger_fulfillment =
  (function
   | {
       return_partial_responses = v_return_partial_responses;
       tag = v_tag;
       webhook = v_webhook;
       conditional_cases = v_conditional_cases;
       messages = v_messages;
       set_parameter_actions = v_set_parameter_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__set_parameter_actions
             v_set_parameter_actions
         in
         ("set_parameter_actions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__messages
             v_messages
         in
         ("messages", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment__conditional_cases
             v_conditional_cases
         in
         ("conditional_cases", arg) :: bnds
       in
       let bnds =
         match v_webhook with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_return_partial_responses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_partial_responses", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes__trigger_fulfillment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transition_routes__trigger_fulfillment

[@@@deriving.end]

type transition_routes = {
  condition : string prop option; [@option]
  intent : string prop option; [@option]
  target_flow : string prop option; [@option]
  target_page : string prop option; [@option]
  trigger_fulfillment : transition_routes__trigger_fulfillment list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transition_routes) -> ()

let yojson_of_transition_routes =
  (function
   | {
       condition = v_condition;
       intent = v_intent;
       target_flow = v_target_flow;
       target_page = v_target_page;
       trigger_fulfillment = v_trigger_fulfillment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transition_routes__trigger_fulfillment
             v_trigger_fulfillment
         in
         ("trigger_fulfillment", arg) :: bnds
       in
       let bnds =
         match v_target_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_flow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_flow", arg in
             bnd :: bnds
       in
       let bnds =
         match v_intent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "intent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transition_routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transition_routes

[@@@deriving.end]

type google_dialogflow_cx_flow = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  is_default_start_flow : bool prop option; [@option]
  language_code : string prop option; [@option]
  parent : string prop option; [@option]
  transition_route_groups : string prop list option; [@option]
  advanced_settings : advanced_settings list;
  event_handlers : event_handlers list;
  nlu_settings : nlu_settings list;
  timeouts : timeouts option;
  transition_routes : transition_routes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_flow) -> ()

let yojson_of_google_dialogflow_cx_flow =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       is_default_start_flow = v_is_default_start_flow;
       language_code = v_language_code;
       parent = v_parent;
       transition_route_groups = v_transition_route_groups;
       advanced_settings = v_advanced_settings;
       event_handlers = v_event_handlers;
       nlu_settings = v_nlu_settings;
       timeouts = v_timeouts;
       transition_routes = v_transition_routes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transition_routes
             v_transition_routes
         in
         ("transition_routes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_nlu_settings v_nlu_settings
         in
         ("nlu_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_handlers v_event_handlers
         in
         ("event_handlers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_settings
             v_advanced_settings
         in
         ("advanced_settings", arg) :: bnds
       in
       let bnds =
         match v_transition_route_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transition_route_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_default_start_flow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default_start_flow", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_cx_flow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_flow

[@@@deriving.end]

let advanced_settings__audio_export_gcs_destination ?uri () :
    advanced_settings__audio_export_gcs_destination =
  { uri }

let advanced_settings__dtmf_settings ?enabled ?finish_digit
    ?max_digits () : advanced_settings__dtmf_settings =
  { enabled; finish_digit; max_digits }

let advanced_settings ?(audio_export_gcs_destination = [])
    ?(dtmf_settings = []) () : advanced_settings =
  { audio_export_gcs_destination; dtmf_settings }

let event_handlers__trigger_fulfillment__conditional_cases ?cases ()
    : event_handlers__trigger_fulfillment__conditional_cases =
  { cases }

let event_handlers__trigger_fulfillment__messages__conversation_success
    ?metadata () :
    event_handlers__trigger_fulfillment__messages__conversation_success
    =
  { metadata }

let event_handlers__trigger_fulfillment__messages__live_agent_handoff
    ?metadata () :
    event_handlers__trigger_fulfillment__messages__live_agent_handoff
    =
  { metadata }

let event_handlers__trigger_fulfillment__messages__output_audio_text
    ?ssml ?text () :
    event_handlers__trigger_fulfillment__messages__output_audio_text
    =
  { ssml; text }

let event_handlers__trigger_fulfillment__messages__play_audio
    ~audio_uri () :
    event_handlers__trigger_fulfillment__messages__play_audio =
  { audio_uri }

let event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    ~phone_number () :
    event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    =
  { phone_number }

let event_handlers__trigger_fulfillment__messages__text ?text () :
    event_handlers__trigger_fulfillment__messages__text =
  { text }

let event_handlers__trigger_fulfillment__messages ?channel ?payload
    ?(conversation_success = []) ?(live_agent_handoff = [])
    ?(output_audio_text = []) ?(play_audio = [])
    ?(telephony_transfer_call = []) ?(text = []) () :
    event_handlers__trigger_fulfillment__messages =
  {
    channel;
    payload;
    conversation_success;
    live_agent_handoff;
    output_audio_text;
    play_audio;
    telephony_transfer_call;
    text;
  }

let event_handlers__trigger_fulfillment__set_parameter_actions
    ?parameter ?value () :
    event_handlers__trigger_fulfillment__set_parameter_actions =
  { parameter; value }

let event_handlers__trigger_fulfillment ?return_partial_responses
    ?tag ?webhook ?(conditional_cases = []) ?(messages = [])
    ?(set_parameter_actions = []) () :
    event_handlers__trigger_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let event_handlers ?event ?target_flow ?target_page
    ?(trigger_fulfillment = []) () : event_handlers =
  { event; target_flow; target_page; trigger_fulfillment }

let nlu_settings ?classification_threshold ?model_training_mode
    ?model_type () : nlu_settings =
  { classification_threshold; model_training_mode; model_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let transition_routes__trigger_fulfillment__conditional_cases ?cases
    () : transition_routes__trigger_fulfillment__conditional_cases =
  { cases }

let transition_routes__trigger_fulfillment__messages__conversation_success
    ?metadata () :
    transition_routes__trigger_fulfillment__messages__conversation_success
    =
  { metadata }

let transition_routes__trigger_fulfillment__messages__live_agent_handoff
    ?metadata () :
    transition_routes__trigger_fulfillment__messages__live_agent_handoff
    =
  { metadata }

let transition_routes__trigger_fulfillment__messages__output_audio_text
    ?ssml ?text () :
    transition_routes__trigger_fulfillment__messages__output_audio_text
    =
  { ssml; text }

let transition_routes__trigger_fulfillment__messages__play_audio
    ~audio_uri () :
    transition_routes__trigger_fulfillment__messages__play_audio =
  { audio_uri }

let transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    ~phone_number () :
    transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    =
  { phone_number }

let transition_routes__trigger_fulfillment__messages__text ?text () :
    transition_routes__trigger_fulfillment__messages__text =
  { text }

let transition_routes__trigger_fulfillment__messages ?channel
    ?payload ?(conversation_success = []) ?(live_agent_handoff = [])
    ?(output_audio_text = []) ?(play_audio = [])
    ?(telephony_transfer_call = []) ?(text = []) () :
    transition_routes__trigger_fulfillment__messages =
  {
    channel;
    payload;
    conversation_success;
    live_agent_handoff;
    output_audio_text;
    play_audio;
    telephony_transfer_call;
    text;
  }

let transition_routes__trigger_fulfillment__set_parameter_actions
    ?parameter ?value () :
    transition_routes__trigger_fulfillment__set_parameter_actions =
  { parameter; value }

let transition_routes__trigger_fulfillment ?return_partial_responses
    ?tag ?webhook ?(conditional_cases = []) ?(messages = [])
    ?(set_parameter_actions = []) () :
    transition_routes__trigger_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let transition_routes ?condition ?intent ?target_flow ?target_page
    ?(trigger_fulfillment = []) () : transition_routes =
  {
    condition;
    intent;
    target_flow;
    target_page;
    trigger_fulfillment;
  }

let google_dialogflow_cx_flow ?description ?id ?is_default_start_flow
    ?language_code ?parent ?transition_route_groups
    ?(advanced_settings = []) ?(event_handlers = [])
    ?(nlu_settings = []) ?timeouts ?(transition_routes = [])
    ~display_name () : google_dialogflow_cx_flow =
  {
    description;
    display_name;
    id;
    is_default_start_flow;
    language_code;
    parent;
    transition_route_groups;
    advanced_settings;
    event_handlers;
    nlu_settings;
    timeouts;
    transition_routes;
  }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_default_start_flow : bool prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  transition_route_groups : string list prop;
}

let make ?description ?id ?is_default_start_flow ?language_code
    ?parent ?transition_route_groups ?(advanced_settings = [])
    ?(event_handlers = []) ?(nlu_settings = []) ?timeouts
    ?(transition_routes = []) ~display_name __id =
  let __type = "google_dialogflow_cx_flow" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       is_default_start_flow =
         Prop.computed __type __id "is_default_start_flow";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       transition_route_groups =
         Prop.computed __type __id "transition_route_groups";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_flow
        (google_dialogflow_cx_flow ?description ?id
           ?is_default_start_flow ?language_code ?parent
           ?transition_route_groups ~advanced_settings
           ~event_handlers ~nlu_settings ?timeouts ~transition_routes
           ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?is_default_start_flow
    ?language_code ?parent ?transition_route_groups
    ?(advanced_settings = []) ?(event_handlers = [])
    ?(nlu_settings = []) ?timeouts ?(transition_routes = [])
    ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?is_default_start_flow ?language_code
      ?parent ?transition_route_groups ~advanced_settings
      ~event_handlers ~nlu_settings ?timeouts ~transition_routes
      ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
