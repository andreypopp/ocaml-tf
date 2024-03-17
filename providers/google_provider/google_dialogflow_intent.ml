(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_intent__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_intent__timeouts *)

type google_dialogflow_intent__followup_intent_info = {
  followup_intent_name : string prop;  (** followup_intent_name *)
  parent_followup_intent_name : string prop;
      (** parent_followup_intent_name *)
}
[@@deriving yojson_of]

type google_dialogflow_intent = {
  action : string prop option; [@option]
      (** The name of the action associated with the intent.
Note: The action name must not contain whitespaces. *)
  default_response_platforms : string prop list option; [@option]
      (** The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
(i.e. default platform). Possible values: [FACEBOOK, SLACK, TELEGRAM, KIK, SKYPE, LINE, VIBER, ACTIONS_ON_GOOGLE, GOOGLE_HANGOUTS] *)
  display_name : string prop;
      (** The name of this intent to be displayed on the console. *)
  events : string prop list option; [@option]
      (** The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
the contexts must be present in the active user session for an event to trigger this intent. See the
[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. *)
  id : string prop option; [@option]  (** id *)
  input_context_names : string prop list option; [@option]
      (** The list of context names required for this intent to be triggered.
Format: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>. *)
  is_fallback : bool prop option; [@option]
      (** Indicates whether this is a fallback intent. *)
  ml_disabled : bool prop option; [@option]
      (** Indicates whether Machine Learning is disabled for the intent.
Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
ONLY match mode. Also, auto-markup in the UI is turned off. *)
  parent_followup_intent_name : string prop option; [@option]
      (** The unique identifier of the parent intent in the chain of followup intents.
Format: projects/<Project ID>/agent/intents/<Intent ID>. *)
  priority : float prop option; [@option]
      (** The priority of this intent. Higher numbers represent higher priorities.
  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  to the Normal priority in the console.
  - If the supplied value is negative, the intent is ignored in runtime detect intent requests. *)
  project : string prop option; [@option]  (** project *)
  reset_contexts : bool prop option; [@option]
      (** Indicates whether to delete all contexts in the current session when this intent is matched. *)
  webhook_state : string prop option; [@option]
      (** Indicates whether webhooks are enabled for the intent.
* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
filling prompt is forwarded to the webhook. Possible values: [WEBHOOK_STATE_ENABLED, WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING] *)
  timeouts : google_dialogflow_intent__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_intent *)

type t = {
  action : string prop;
  default_response_platforms : string list prop;
  display_name : string prop;
  events : string list prop;
  followup_intent_info :
    google_dialogflow_intent__followup_intent_info list prop;
  id : string prop;
  input_context_names : string list prop;
  is_fallback : bool prop;
  ml_disabled : bool prop;
  name : string prop;
  parent_followup_intent_name : string prop;
  priority : float prop;
  project : string prop;
  reset_contexts : bool prop;
  root_followup_intent_name : string prop;
  webhook_state : string prop;
}

let google_dialogflow_intent ?action ?default_response_platforms
    ?events ?id ?input_context_names ?is_fallback ?ml_disabled
    ?parent_followup_intent_name ?priority ?project ?reset_contexts
    ?webhook_state ?timeouts ~display_name __resource_id =
  let __resource_type = "google_dialogflow_intent" in
  let __resource =
    ({
       action;
       default_response_platforms;
       display_name;
       events;
       id;
       input_context_names;
       is_fallback;
       ml_disabled;
       parent_followup_intent_name;
       priority;
       project;
       reset_contexts;
       webhook_state;
       timeouts;
     }
      : google_dialogflow_intent)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_intent __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       default_response_platforms =
         Prop.computed __resource_type __resource_id
           "default_response_platforms";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       events = Prop.computed __resource_type __resource_id "events";
       followup_intent_info =
         Prop.computed __resource_type __resource_id
           "followup_intent_info";
       id = Prop.computed __resource_type __resource_id "id";
       input_context_names =
         Prop.computed __resource_type __resource_id
           "input_context_names";
       is_fallback =
         Prop.computed __resource_type __resource_id "is_fallback";
       ml_disabled =
         Prop.computed __resource_type __resource_id "ml_disabled";
       name = Prop.computed __resource_type __resource_id "name";
       parent_followup_intent_name =
         Prop.computed __resource_type __resource_id
           "parent_followup_intent_name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       project =
         Prop.computed __resource_type __resource_id "project";
       reset_contexts =
         Prop.computed __resource_type __resource_id "reset_contexts";
       root_followup_intent_name =
         Prop.computed __resource_type __resource_id
           "root_followup_intent_name";
       webhook_state =
         Prop.computed __resource_type __resource_id "webhook_state";
     }
      : t)
  in
  __resource_attributes
