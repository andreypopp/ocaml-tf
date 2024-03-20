(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type followup_intent_info = {
  followup_intent_name : string prop;  (** followup_intent_name *)
  parent_followup_intent_name : string prop;
      (** parent_followup_intent_name *)
}

[@@@deriving.end]

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_intent

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
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_dialogflow_intent

val yojson_of_google_dialogflow_intent :
  google_dialogflow_intent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  default_response_platforms : string list prop;
  display_name : string prop;
  events : string list prop;
  followup_intent_info : followup_intent_info list prop;
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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
