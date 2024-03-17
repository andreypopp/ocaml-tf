(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_intent__timeouts

type google_dialogflow_intent__followup_intent_info = {
  followup_intent_name : string;  (** followup_intent_name *)
  parent_followup_intent_name : string;
      (** parent_followup_intent_name *)
}

type google_dialogflow_intent

val google_dialogflow_intent :
  ?action:string ->
  ?default_response_platforms:string list ->
  ?events:string list ->
  ?id:string ->
  ?input_context_names:string list ->
  ?is_fallback:bool ->
  ?ml_disabled:bool ->
  ?parent_followup_intent_name:string ->
  ?priority:float ->
  ?project:string ->
  ?reset_contexts:bool ->
  ?webhook_state:string ->
  ?timeouts:google_dialogflow_intent__timeouts ->
  display_name:string ->
  string ->
  unit
