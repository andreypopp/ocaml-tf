(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dialogflow_intent__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_intent__timeouts *)

type google_dialogflow_intent__followup_intent_info = {
  followup_intent_name : string;  (** followup_intent_name *)
  parent_followup_intent_name : string;
      (** parent_followup_intent_name *)
}
[@@deriving yojson_of]

type google_dialogflow_intent = {
  default_response_platforms : string list option; [@option]
      (** The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
(i.e. default platform). Possible values: [FACEBOOK, SLACK, TELEGRAM, KIK, SKYPE, LINE, VIBER, ACTIONS_ON_GOOGLE, GOOGLE_HANGOUTS] *)
  display_name : string;
      (** The name of this intent to be displayed on the console. *)
  events : string list option; [@option]
      (** The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
the contexts must be present in the active user session for an event to trigger this intent. See the
[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. *)
  input_context_names : string list option; [@option]
      (** The list of context names required for this intent to be triggered.
Format: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>. *)
  timeouts : google_dialogflow_intent__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_intent *)

let google_dialogflow_intent ?default_response_platforms ?events
    ?input_context_names ?timeouts ~display_name __resource_id =
  let __resource_type = "google_dialogflow_intent" in
  let __resource =
    {
      default_response_platforms;
      display_name;
      events;
      input_context_names;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_intent __resource);
  ()
