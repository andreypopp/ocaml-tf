(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type advanced_settings__audio_export_gcs_destination = {
  uri : string prop option; [@option]
      (** The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
Format: gs://bucket/object-name-or-prefix *)
}
[@@deriving yojson_of]
(** If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
* Agent level
* Flow level *)

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
  audio_export_gcs_destination :
    advanced_settings__audio_export_gcs_destination list;
  dtmf_settings : advanced_settings__dtmf_settings list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

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
(** A flow's event handlers serve two purposes:
They are responsible for handling events (e.g. no match, webhook errors) in the flow.
They are inherited by every page's [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. *)

type nlu_settings = {
  classification_threshold : float prop option; [@option]
      (** To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold.
If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used. *)
  model_training_mode : string prop option; [@option]
      (** Indicates NLU model training mode.
* MODEL_TRAINING_MODE_AUTOMATIC: NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.
* MODEL_TRAINING_MODE_MANUAL: User needs to manually trigger NLU model training. Best for large flows whose models take long time to train. Possible values: [MODEL_TRAINING_MODE_AUTOMATIC, MODEL_TRAINING_MODE_MANUAL] *)
  model_type : string prop option; [@option]
      (** Indicates the type of NLU model.
* MODEL_TYPE_STANDARD: Use standard NLU model.
* MODEL_TYPE_ADVANCED: Use advanced NLU model. Possible values: [MODEL_TYPE_STANDARD, MODEL_TYPE_ADVANCED] *)
}
[@@deriving yojson_of]
(** NLU related settings of the flow. *)

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
(** A flow's transition routes serve two purposes:
They are responsible for matching the user's first utterances in the flow.
They are inherited by every page's [transition routes][Page.transition_routes] and can support use cases such as the user saying help or can I talk to a human?, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.

TransitionRoutes are evalauted in the following order:
  TransitionRoutes with intent specified.
  TransitionRoutes with only condition specified.
  TransitionRoutes with intent specified are inherited by pages in the flow. *)

type google_dialogflow_cx_flow = {
  description : string prop option; [@option]
      (** The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;
      (** The human-readable name of the flow. *)
  id : string prop option; [@option]  (** id *)
  is_default_start_flow : bool prop option; [@option]
      (** Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
The Default Start Flow cannot be deleted; deleting the 'google_dialogflow_cx_flow' resource does nothing to the underlying GCP resources.

~> Avoid having multiple 'google_dialogflow_cx_flow' resources linked to the same agent with 'is_default_start_flow = true' because they will compete to control a single Default Start Flow resource in GCP. *)
  language_code : string prop option; [@option]
      (** The language of the following fields in flow:
Flow.event_handlers.trigger_fulfillment.messages
Flow.event_handlers.trigger_fulfillment.conditional_cases
Flow.transition_routes.trigger_fulfillment.messages
Flow.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. *)
  parent : string prop option; [@option]
      (** The agent to create a flow for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  transition_route_groups : string prop list option; [@option]
      (** A flow's transition route group serve two purposes:
They are responsible for matching the user's first utterances in the flow.
They are inherited by every page's [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>. *)
  advanced_settings : advanced_settings list;
  event_handlers : event_handlers list;
  nlu_settings : nlu_settings list;
  timeouts : timeouts option;
  transition_routes : transition_routes list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_flow *)

let advanced_settings__audio_export_gcs_destination ?uri () :
    advanced_settings__audio_export_gcs_destination =
  { uri }

let advanced_settings__dtmf_settings ?enabled ?finish_digit
    ?max_digits () : advanced_settings__dtmf_settings =
  { enabled; finish_digit; max_digits }

let advanced_settings ~audio_export_gcs_destination ~dtmf_settings ()
    : advanced_settings =
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

let google_dialogflow_cx_flow ?description ?id ?is_default_start_flow
    ?language_code ?parent ?transition_route_groups ?timeouts
    ~display_name ~advanced_settings ~event_handlers ~nlu_settings
    ~transition_routes () : google_dialogflow_cx_flow =
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
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_default_start_flow : bool prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  transition_route_groups : string list prop;
}

let register ?tf_module ?description ?id ?is_default_start_flow
    ?language_code ?parent ?transition_route_groups ?timeouts
    ~display_name ~advanced_settings ~event_handlers ~nlu_settings
    ~transition_routes __resource_id =
  let __resource_type = "google_dialogflow_cx_flow" in
  let __resource =
    google_dialogflow_cx_flow ?description ?id ?is_default_start_flow
      ?language_code ?parent ?transition_route_groups ?timeouts
      ~display_name ~advanced_settings ~event_handlers ~nlu_settings
      ~transition_routes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_flow __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       is_default_start_flow =
         Prop.computed __resource_type __resource_id
           "is_default_start_flow";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       transition_route_groups =
         Prop.computed __resource_type __resource_id
           "transition_route_groups";
     }
      : t)
  in
  __resource_attributes
