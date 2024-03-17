(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_intent__timeouts

type google_dialogflow_intent__followup_intent_info = {
  followup_intent_name : string prop;  (** followup_intent_name *)
  parent_followup_intent_name : string prop;
      (** parent_followup_intent_name *)
}

type google_dialogflow_intent

type t = private {
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

val google_dialogflow_intent :
  ?action:string prop ->
  ?default_response_platforms:string prop list ->
  ?events:string prop list ->
  ?id:string prop ->
  ?input_context_names:string prop list ->
  ?is_fallback:bool prop ->
  ?ml_disabled:bool prop ->
  ?parent_followup_intent_name:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?reset_contexts:bool prop ->
  ?webhook_state:string prop ->
  ?timeouts:google_dialogflow_intent__timeouts ->
  display_name:string prop ->
  string ->
  t
