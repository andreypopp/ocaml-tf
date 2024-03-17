(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_page__advanced_settings__dtmf_settings = {
  enabled : bool option; [@option]
      (** If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a 3 was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). *)
  finish_digit : string option; [@option]
      (** The digit that terminates a DTMF digit sequence. *)
  max_digits : float option; [@option]
      (** Max length of DTMF digits. *)
}
[@@deriving yojson_of]
(** Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level *)

type google_dialogflow_cx_page__advanced_settings = {
  dtmf_settings :
    google_dialogflow_cx_page__advanced_settings__dtmf_settings list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

type google_dialogflow_cx_page__entry_fulfillment__conditional_cases = {
  cases : string option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__conversation_success = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__live_agent_handoff = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__output_audio_text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  ssml : string option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__play_audio = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  audio_uri : string;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__telephony_transfer_call = {
  phone_number : string;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type google_dialogflow_cx_page__entry_fulfillment__messages__text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  text : string list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type google_dialogflow_cx_page__entry_fulfillment__messages = {
  channel : string option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    google_dialogflow_cx_page__entry_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    google_dialogflow_cx_page__entry_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    google_dialogflow_cx_page__entry_fulfillment__messages__output_audio_text
    list;
  play_audio :
    google_dialogflow_cx_page__entry_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    google_dialogflow_cx_page__entry_fulfillment__messages__telephony_transfer_call
    list;
  text :
    google_dialogflow_cx_page__entry_fulfillment__messages__text list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type google_dialogflow_cx_page__entry_fulfillment__set_parameter_actions = {
  parameter : string option; [@option]
      (** Display name of the parameter. *)
  value : string option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type google_dialogflow_cx_page__entry_fulfillment = {
  return_partial_responses : bool option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    google_dialogflow_cx_page__entry_fulfillment__conditional_cases
    list;
  messages :
    google_dialogflow_cx_page__entry_fulfillment__messages list;
  set_parameter_actions :
    google_dialogflow_cx_page__entry_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the session is entering the page. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__conditional_cases = {
  cases : string option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__conversation_success = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__output_audio_text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  ssml : string option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__play_audio = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  audio_uri : string;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  text : string list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages = {
  channel : string option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment__set_parameter_actions = {
  parameter : string option; [@option]
      (** Display name of the parameter. *)
  value : string option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type google_dialogflow_cx_page__event_handlers__trigger_fulfillment = {
  return_partial_responses : bool option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__conditional_cases
    list;
  messages :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__messages
    list;
  set_parameter_actions :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. *)

type google_dialogflow_cx_page__event_handlers = {
  event : string option; [@option]
      (** The name of the event to handle. *)
  name : string;  (** The unique identifier of this event handler. *)
  target_flow : string option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment :
    google_dialogflow_cx_page__event_handlers__trigger_fulfillment
    list;
}
[@@deriving yojson_of]
(** Handlers associated with the page to handle events such as webhook errors, no match or no input. *)

type google_dialogflow_cx_page__form__parameters__advanced_settings__dtmf_settings = {
  enabled : bool option; [@option]
      (** If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a 3 was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). *)
  finish_digit : string option; [@option]
      (** The digit that terminates a DTMF digit sequence. *)
  max_digits : float option; [@option]
      (** Max length of DTMF digits. *)
}
[@@deriving yojson_of]
(** Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level *)

type google_dialogflow_cx_page__form__parameters__advanced_settings = {
  dtmf_settings :
    google_dialogflow_cx_page__form__parameters__advanced_settings__dtmf_settings
    list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases = {
  cases : string option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  ssml : string option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  audio_uri : string;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call = {
  phone_number : string;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  text : string list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages = {
  channel : string option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text
    list;
  play_audio :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call
    list;
  text :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions = {
  parameter : string option; [@option]
      (** Display name of the parameter. *)
  value : string option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment = {
  return_partial_responses : bool option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases
    list;
  messages :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__messages
    list;
  set_parameter_actions :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases = {
  cases : string option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  ssml : string option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  audio_uri : string;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  text : string list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages = {
  channel : string option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions = {
  parameter : string option; [@option]
      (** Display name of the parameter. *)
  value : string option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment = {
  return_partial_responses : bool option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases
    list;
  messages :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages
    list;
  set_parameter_actions :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers = {
  event : string option; [@option]
      (** The name of the event to handle. *)
  name : string;  (** The unique identifier of this event handler. *)
  target_flow : string option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment
    list;
}
[@@deriving yojson_of]
(** The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are:
* sys.no-match-<N>, where N can be from 1 to 6
* sys.no-match-default
* sys.no-input-<N>, where N can be from 1 to 6
* sys.no-input-default
* sys.invalid-parameter
[initialPromptFulfillment][initialPromptFulfillment] provides the first prompt for the parameter.
If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the sys.no-match-1/sys.no-input-1 handler (if defined) will be called to provide a prompt. The sys.no-match-2/sys.no-input-2 handler (if defined) will respond to the next no-match/no-input event, and so on.
A sys.no-match-default or sys.no-input-default handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed.
A sys.invalid-parameter handler can be defined to handle the case where the parameter values have been invalidated by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the sys.invalid-parameter handler (if defined) will be called to provide a prompt.
If the event handler for the corresponding event can't be found on the parameter, initialPromptFulfillment will be re-prompted. *)

type google_dialogflow_cx_page__form__parameters__fill_behavior = {
  initial_prompt_fulfillment :
    google_dialogflow_cx_page__form__parameters__fill_behavior__initial_prompt_fulfillment
    list;
  reprompt_event_handlers :
    google_dialogflow_cx_page__form__parameters__fill_behavior__reprompt_event_handlers
    list;
}
[@@deriving yojson_of]
(** Defines fill behavior for the parameter. *)

type google_dialogflow_cx_page__form__parameters = {
  default_value : string option; [@option]
      (** The default value of an optional parameter. If the parameter is required, the default value will be ignored. *)
  display_name : string option; [@option]
      (** The human-readable name of the parameter, unique within the form. *)
  entity_type : string option; [@option]
      (** The entity type of the parameter.
Format: projects/-/locations/-/agents/-/entityTypes/<System Entity Type ID> for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID> for developer entity types. *)
  is_list : bool option; [@option]
      (** Indicates whether the parameter represents a list of values. *)
  redact : bool option; [@option]
      (** Indicates whether the parameter content should be redacted in log.
If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. *)
  required : bool option; [@option]
      (** Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
Required parameters must be filled before form filling concludes. *)
  advanced_settings :
    google_dialogflow_cx_page__form__parameters__advanced_settings
    list;
  fill_behavior :
    google_dialogflow_cx_page__form__parameters__fill_behavior list;
}
[@@deriving yojson_of]
(** Parameters to collect from the user. *)

type google_dialogflow_cx_page__form = {
  parameters : google_dialogflow_cx_page__form__parameters list;
}
[@@deriving yojson_of]
(** The form associated with the page, used for collecting parameters relevant to the page. *)

type google_dialogflow_cx_page__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_page__timeouts *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__conditional_cases = {
  cases : string option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__conversation_success = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__output_audio_text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  ssml : string option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__play_audio = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  audio_uri : string;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__text = {
  allow_playback_interruption : bool;
      (** Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request. *)
  text : string list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages = {
  channel : string option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment__set_parameter_actions = {
  parameter : string option; [@option]
      (** Display name of the parameter. *)
  value : string option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type google_dialogflow_cx_page__transition_routes__trigger_fulfillment = {
  return_partial_responses : bool option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__conditional_cases
    list;
  messages :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__messages
    list;
  set_parameter_actions :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first. *)

type google_dialogflow_cx_page__transition_routes = {
  condition : string option; [@option]
      (** The condition to evaluate against form parameters or session parameters.
At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. *)
  intent : string option; [@option]
      (** The unique identifier of an Intent.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. *)
  name : string;
      (** The unique identifier of this transition route. *)
  target_flow : string option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment :
    google_dialogflow_cx_page__transition_routes__trigger_fulfillment
    list;
}
[@@deriving yojson_of]
(** A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
When we are in a certain page, the TransitionRoutes are evalauted in the following order:
TransitionRoutes defined in the page with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in flow with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in the page with only condition specified.
TransitionRoutes defined in the transition route groups with only condition specified. *)

type google_dialogflow_cx_page = {
  display_name : string;
      (** The human-readable name of the page, unique within the agent. *)
  id : string option; [@option]  (** id *)
  language_code : string option; [@option]
      (** The language of the following fields in page:

Page.entry_fulfillment.messages
Page.entry_fulfillment.conditional_cases
Page.event_handlers.trigger_fulfillment.messages
Page.event_handlers.trigger_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
Page.transition_routes.trigger_fulfillment.messages
Page.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. *)
  parent : string option; [@option]
      (** The flow to create a page for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  transition_route_groups : string list option; [@option]
      (** Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes.
If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>. *)
  advanced_settings :
    google_dialogflow_cx_page__advanced_settings list;
  entry_fulfillment :
    google_dialogflow_cx_page__entry_fulfillment list;
  event_handlers : google_dialogflow_cx_page__event_handlers list;
  form : google_dialogflow_cx_page__form list;
  timeouts : google_dialogflow_cx_page__timeouts option;
  transition_routes :
    google_dialogflow_cx_page__transition_routes list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_page *)

let google_dialogflow_cx_page ?id ?language_code ?parent
    ?transition_route_groups ?timeouts ~display_name
    ~advanced_settings ~entry_fulfillment ~event_handlers ~form
    ~transition_routes __resource_id =
  let __resource_type = "google_dialogflow_cx_page" in
  let __resource =
    {
      display_name;
      id;
      language_code;
      parent;
      transition_route_groups;
      advanced_settings;
      entry_fulfillment;
      event_handlers;
      form;
      timeouts;
      transition_routes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_page __resource);
  ()
