(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_intent__timeouts

type google_dialogflow_intent__followup_intent_info = {
  followup_intent_name : string;  (** followup_intent_name *)
  parent_followup_intent_name : string;
      (** parent_followup_intent_name *)
}
[@@deriving yojson_of]

type google_dialogflow_intent

val google_dialogflow_intent :
  ?default_response_platforms:string list ->
  ?events:string list ->
  ?input_context_names:string list ->
  ?timeouts:google_dialogflow_intent__timeouts ->
  display_name:string ->
  string ->
  unit
