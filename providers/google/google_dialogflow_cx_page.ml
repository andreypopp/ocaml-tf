(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_settings__dtmf_settings = {
  enabled : bool prop option; [@option]
      (** If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a 3 was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). *)
  finish_digit : string prop option; [@option]
      (** The digit that terminates a DTMF digit sequence. *)
  max_digits : float prop option; [@option]
      (** Max length of DTMF digits. *)
}
[@@deriving yojson_of]
(** Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level *)

type advanced_settings = {
  dtmf_settings : advanced_settings__dtmf_settings list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

type entry_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type entry_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type entry_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type entry_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string prop option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type entry_fulfillment__messages__play_audio = {
  audio_uri : string prop;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type entry_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type entry_fulfillment__messages__text = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type entry_fulfillment__messages = {
  channel : string prop option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string prop option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    entry_fulfillment__messages__conversation_success list;
  live_agent_handoff :
    entry_fulfillment__messages__live_agent_handoff list;
  output_audio_text :
    entry_fulfillment__messages__output_audio_text list;
  play_audio : entry_fulfillment__messages__play_audio list;
  telephony_transfer_call :
    entry_fulfillment__messages__telephony_transfer_call list;
  text : entry_fulfillment__messages__text list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type entry_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
      (** Display name of the parameter. *)
  value : string prop option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type entry_fulfillment = {
  return_partial_responses : bool prop option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string prop option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string prop option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases : entry_fulfillment__conditional_cases list;
  messages : entry_fulfillment__messages list;
  set_parameter_actions :
    entry_fulfillment__set_parameter_actions list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the session is entering the page. *)

type event_handlers__trigger_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type event_handlers__trigger_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type event_handlers__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type event_handlers__trigger_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string prop option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type event_handlers__trigger_fulfillment__messages__play_audio = {
  audio_uri : string prop;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type event_handlers__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type event_handlers__trigger_fulfillment__messages__text = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type event_handlers__trigger_fulfillment__messages = {
  channel : string prop option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string prop option; [@option]
      (** A custom, platform-specific payload. *)
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
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type event_handlers__trigger_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
      (** Display name of the parameter. *)
  value : string prop option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type event_handlers__trigger_fulfillment = {
  return_partial_responses : bool prop option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string prop option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string prop option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    event_handlers__trigger_fulfillment__conditional_cases list;
  messages : event_handlers__trigger_fulfillment__messages list;
  set_parameter_actions :
    event_handlers__trigger_fulfillment__set_parameter_actions list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. *)

type event_handlers = {
  event : string prop option; [@option]
      (** The name of the event to handle. *)
  target_flow : string prop option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string prop option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment : event_handlers__trigger_fulfillment list;
}
[@@deriving yojson_of]
(** Handlers associated with the page to handle events such as webhook errors, no match or no input. *)

type form__parameters__advanced_settings__dtmf_settings = {
  enabled : bool prop option; [@option]
      (** If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a 3 was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). *)
  finish_digit : string prop option; [@option]
      (** The digit that terminates a DTMF digit sequence. *)
  max_digits : float prop option; [@option]
      (** Max length of DTMF digits. *)
}
[@@deriving yojson_of]
(** Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level *)

type form__parameters__advanced_settings = {
  dtmf_settings :
    form__parameters__advanced_settings__dtmf_settings list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string prop option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio = {
  audio_uri : string prop;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__messages = {
  channel : string prop option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string prop option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text
    list;
  play_audio :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call
    list;
  text :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
      (** Display name of the parameter. *)
  value : string prop option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type form__parameters__fill_behavior__initial_prompt_fulfillment = {
  return_partial_responses : bool prop option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string prop option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string prop option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases
    list;
  messages :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages
    list;
  set_parameter_actions :
    form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string prop option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio = {
  audio_uri : string prop;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages = {
  channel : string prop option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string prop option; [@option]
      (** A custom, platform-specific payload. *)
  conversation_success :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success
    list;
  live_agent_handoff :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    list;
  output_audio_text :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text
    list;
  play_audio :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio
    list;
  telephony_transfer_call :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    list;
  text :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text
    list;
}
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
      (** Display name of the parameter. *)
  value : string prop option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment = {
  return_partial_responses : bool prop option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string prop option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string prop option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases
    list;
  messages :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages
    list;
  set_parameter_actions :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. *)

type form__parameters__fill_behavior__reprompt_event_handlers = {
  event : string prop option; [@option]
      (** The name of the event to handle. *)
  target_flow : string prop option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string prop option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment
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

type form__parameters__fill_behavior = {
  initial_prompt_fulfillment :
    form__parameters__fill_behavior__initial_prompt_fulfillment list;
  reprompt_event_handlers :
    form__parameters__fill_behavior__reprompt_event_handlers list;
}
[@@deriving yojson_of]
(** Defines fill behavior for the parameter. *)

type form__parameters = {
  default_value : string prop option; [@option]
      (** The default value of an optional parameter. If the parameter is required, the default value will be ignored. *)
  display_name : string prop option; [@option]
      (** The human-readable name of the parameter, unique within the form. *)
  entity_type : string prop option; [@option]
      (** The entity type of the parameter.
Format: projects/-/locations/-/agents/-/entityTypes/<System Entity Type ID> for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID> for developer entity types. *)
  is_list : bool prop option; [@option]
      (** Indicates whether the parameter represents a list of values. *)
  redact : bool prop option; [@option]
      (** Indicates whether the parameter content should be redacted in log.
If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. *)
  required : bool prop option; [@option]
      (** Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
Required parameters must be filled before form filling concludes. *)
  advanced_settings : form__parameters__advanced_settings list;
  fill_behavior : form__parameters__fill_behavior list;
}
[@@deriving yojson_of]
(** Parameters to collect from the user. *)

type form = { parameters : form__parameters list }
[@@deriving yojson_of]
(** The form associated with the page, used for collecting parameters relevant to the page. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type transition_routes__trigger_fulfillment__conditional_cases = {
  cases : string prop option; [@option]
      (** A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. *)
}
[@@deriving yojson_of]
(** Conditional cases for this fulfillment. *)

type transition_routes__trigger_fulfillment__messages__conversation_success = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
* In a webhook response when you determine that you handled the customer issue. *)

type transition_routes__trigger_fulfillment__messages__live_agent_handoff = {
  metadata : string prop option; [@option]
      (** Custom metadata. Dialogflow doesn't impose any structure on this. *)
}
[@@deriving yojson_of]
(** Indicates that the conversation should be handed off to a live agent.
Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
You may set this, for example:
* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
* In a webhook response when you determine that the customer issue can only be handled by a human. *)

type transition_routes__trigger_fulfillment__messages__output_audio_text = {
  ssml : string prop option; [@option]
      (** The SSML text to be synthesized. For more information, see SSML. *)
  text : string prop option; [@option]
      (** The raw text to be synthesized. *)
}
[@@deriving yojson_of]
(** A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. *)

type transition_routes__trigger_fulfillment__messages__play_audio = {
  audio_uri : string prop;
      (** URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it. *)
}
[@@deriving yojson_of]
(** Specifies an audio clip to be played by the client as part of the response. *)

type transition_routes__trigger_fulfillment__messages__telephony_transfer_call = {
  phone_number : string prop;
      (** Transfer the call to a phone number in E.164 format. *)
}
[@@deriving yojson_of]
(** Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. *)

type transition_routes__trigger_fulfillment__messages__text = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text response message. *)

type transition_routes__trigger_fulfillment__messages = {
  channel : string prop option; [@option]
      (** The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. *)
  payload : string prop option; [@option]
      (** A custom, platform-specific payload. *)
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
[@@deriving yojson_of]
(** The list of rich message responses to present to the user. *)

type transition_routes__trigger_fulfillment__set_parameter_actions = {
  parameter : string prop option; [@option]
      (** Display name of the parameter. *)
  value : string prop option; [@option]
      (** The new JSON-encoded value of the parameter. A null value clears the parameter. *)
}
[@@deriving yojson_of]
(** Set parameter values before executing the webhook. *)

type transition_routes__trigger_fulfillment = {
  return_partial_responses : bool prop option; [@option]
      (** Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. *)
  tag : string prop option; [@option]
      (** The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. *)
  webhook : string prop option; [@option]
      (** The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>. *)
  conditional_cases :
    transition_routes__trigger_fulfillment__conditional_cases list;
  messages : transition_routes__trigger_fulfillment__messages list;
  set_parameter_actions :
    transition_routes__trigger_fulfillment__set_parameter_actions
    list;
}
[@@deriving yojson_of]
(** The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first. *)

type transition_routes = {
  condition : string prop option; [@option]
      (** The condition to evaluate against form parameters or session parameters.
At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. *)
  intent : string prop option; [@option]
      (** The unique identifier of an Intent.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. *)
  target_flow : string prop option; [@option]
      (** The target flow to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  target_page : string prop option; [@option]
      (** The target page to transition to.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
  trigger_fulfillment : transition_routes__trigger_fulfillment list;
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
  display_name : string prop;
      (** The human-readable name of the page, unique within the agent. *)
  id : string prop option; [@option]  (** id *)
  language_code : string prop option; [@option]
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
  parent : string prop option; [@option]
      (** The flow to create a page for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  transition_route_groups : string prop list option; [@option]
      (** Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes.
If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>. *)
  advanced_settings : advanced_settings list;
  entry_fulfillment : entry_fulfillment list;
  event_handlers : event_handlers list;
  form : form list;
  timeouts : timeouts option;
  transition_routes : transition_routes list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_page *)

let advanced_settings__dtmf_settings ?enabled ?finish_digit
    ?max_digits () : advanced_settings__dtmf_settings =
  { enabled; finish_digit; max_digits }

let advanced_settings ~dtmf_settings () : advanced_settings =
  { dtmf_settings }

let entry_fulfillment__conditional_cases ?cases () :
    entry_fulfillment__conditional_cases =
  { cases }

let entry_fulfillment__messages__conversation_success ?metadata () :
    entry_fulfillment__messages__conversation_success =
  { metadata }

let entry_fulfillment__messages__live_agent_handoff ?metadata () :
    entry_fulfillment__messages__live_agent_handoff =
  { metadata }

let entry_fulfillment__messages__output_audio_text ?ssml ?text () :
    entry_fulfillment__messages__output_audio_text =
  { ssml; text }

let entry_fulfillment__messages__play_audio ~audio_uri () :
    entry_fulfillment__messages__play_audio =
  { audio_uri }

let entry_fulfillment__messages__telephony_transfer_call
    ~phone_number () :
    entry_fulfillment__messages__telephony_transfer_call =
  { phone_number }

let entry_fulfillment__messages__text ?text () :
    entry_fulfillment__messages__text =
  { text }

let entry_fulfillment__messages ?channel ?payload
    ~conversation_success ~live_agent_handoff ~output_audio_text
    ~play_audio ~telephony_transfer_call ~text () :
    entry_fulfillment__messages =
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

let entry_fulfillment__set_parameter_actions ?parameter ?value () :
    entry_fulfillment__set_parameter_actions =
  { parameter; value }

let entry_fulfillment ?return_partial_responses ?tag ?webhook
    ~conditional_cases ~messages ~set_parameter_actions () :
    entry_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

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
    ~conversation_success ~live_agent_handoff ~output_audio_text
    ~play_audio ~telephony_transfer_call ~text () :
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
    ?tag ?webhook ~conditional_cases ~messages ~set_parameter_actions
    () : event_handlers__trigger_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let event_handlers ?event ?target_flow ?target_page
    ~trigger_fulfillment () : event_handlers =
  { event; target_flow; target_page; trigger_fulfillment }

let form__parameters__advanced_settings__dtmf_settings ?enabled
    ?finish_digit ?max_digits () :
    form__parameters__advanced_settings__dtmf_settings =
  { enabled; finish_digit; max_digits }

let form__parameters__advanced_settings ~dtmf_settings () :
    form__parameters__advanced_settings =
  { dtmf_settings }

let form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases
    ?cases () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__conditional_cases
    =
  { cases }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success
    ?metadata () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__conversation_success
    =
  { metadata }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff
    ?metadata () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__live_agent_handoff
    =
  { metadata }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text
    ?ssml ?text () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__output_audio_text
    =
  { ssml; text }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio
    ~audio_uri () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__play_audio
    =
  { audio_uri }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call
    ~phone_number () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__telephony_transfer_call
    =
  { phone_number }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text
    ?text () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages__text
    =
  { text }

let form__parameters__fill_behavior__initial_prompt_fulfillment__messages
    ?channel ?payload ~conversation_success ~live_agent_handoff
    ~output_audio_text ~play_audio ~telephony_transfer_call ~text ()
    :
    form__parameters__fill_behavior__initial_prompt_fulfillment__messages
    =
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

let form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions
    ?parameter ?value () :
    form__parameters__fill_behavior__initial_prompt_fulfillment__set_parameter_actions
    =
  { parameter; value }

let form__parameters__fill_behavior__initial_prompt_fulfillment
    ?return_partial_responses ?tag ?webhook ~conditional_cases
    ~messages ~set_parameter_actions () :
    form__parameters__fill_behavior__initial_prompt_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases
    ?cases () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__conditional_cases
    =
  { cases }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success
    ?metadata () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__conversation_success
    =
  { metadata }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    ?metadata () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__live_agent_handoff
    =
  { metadata }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text
    ?ssml ?text () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__output_audio_text
    =
  { ssml; text }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio
    ~audio_uri () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__play_audio
    =
  { audio_uri }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    ~phone_number () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__telephony_transfer_call
    =
  { phone_number }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text
    ?text () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages__text
    =
  { text }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages
    ?channel ?payload ~conversation_success ~live_agent_handoff
    ~output_audio_text ~play_audio ~telephony_transfer_call ~text ()
    :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__messages
    =
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

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions
    ?parameter ?value () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment__set_parameter_actions
    =
  { parameter; value }

let form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment
    ?return_partial_responses ?tag ?webhook ~conditional_cases
    ~messages ~set_parameter_actions () :
    form__parameters__fill_behavior__reprompt_event_handlers__trigger_fulfillment
    =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let form__parameters__fill_behavior__reprompt_event_handlers ?event
    ?target_flow ?target_page ~trigger_fulfillment () :
    form__parameters__fill_behavior__reprompt_event_handlers =
  { event; target_flow; target_page; trigger_fulfillment }

let form__parameters__fill_behavior ~initial_prompt_fulfillment
    ~reprompt_event_handlers () : form__parameters__fill_behavior =
  { initial_prompt_fulfillment; reprompt_event_handlers }

let form__parameters ?default_value ?display_name ?entity_type
    ?is_list ?redact ?required ~advanced_settings ~fill_behavior () :
    form__parameters =
  {
    default_value;
    display_name;
    entity_type;
    is_list;
    redact;
    required;
    advanced_settings;
    fill_behavior;
  }

let form ~parameters () : form = { parameters }

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
    ?payload ~conversation_success ~live_agent_handoff
    ~output_audio_text ~play_audio ~telephony_transfer_call ~text ()
    : transition_routes__trigger_fulfillment__messages =
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
    ?tag ?webhook ~conditional_cases ~messages ~set_parameter_actions
    () : transition_routes__trigger_fulfillment =
  {
    return_partial_responses;
    tag;
    webhook;
    conditional_cases;
    messages;
    set_parameter_actions;
  }

let transition_routes ?condition ?intent ?target_flow ?target_page
    ~trigger_fulfillment () : transition_routes =
  {
    condition;
    intent;
    target_flow;
    target_page;
    trigger_fulfillment;
  }

let google_dialogflow_cx_page ?id ?language_code ?parent
    ?transition_route_groups ?timeouts ~display_name
    ~advanced_settings ~entry_fulfillment ~event_handlers ~form
    ~transition_routes () : google_dialogflow_cx_page =
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

type t = {
  display_name : string prop;
  id : string prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  transition_route_groups : string list prop;
}

let make ?id ?language_code ?parent ?transition_route_groups
    ?timeouts ~display_name ~advanced_settings ~entry_fulfillment
    ~event_handlers ~form ~transition_routes __id =
  let __type = "google_dialogflow_cx_page" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
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
      yojson_of_google_dialogflow_cx_page
        (google_dialogflow_cx_page ?id ?language_code ?parent
           ?transition_route_groups ?timeouts ~display_name
           ~advanced_settings ~entry_fulfillment ~event_handlers
           ~form ~transition_routes ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?language_code ?parent
    ?transition_route_groups ?timeouts ~display_name
    ~advanced_settings ~entry_fulfillment ~event_handlers ~form
    ~transition_routes __id =
  let (r : _ Tf_core.resource) =
    make ?id ?language_code ?parent ?transition_route_groups
      ?timeouts ~display_name ~advanced_settings ~entry_fulfillment
      ~event_handlers ~form ~transition_routes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
