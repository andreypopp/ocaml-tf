(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters

val parameters :
  ?is_list:bool prop ->
  ?redact:bool prop ->
  entity_type:string prop ->
  id:string prop ->
  unit ->
  parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type training_phrases__parts

val training_phrases__parts :
  ?parameter_id:string prop ->
  text:string prop ->
  unit ->
  training_phrases__parts

type training_phrases

val training_phrases :
  ?repeat_count:float prop ->
  parts:training_phrases__parts list ->
  unit ->
  training_phrases

type google_dialogflow_cx_intent

val google_dialogflow_cx_intent :
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_negative_intent:bool prop ->
  ?is_default_welcome_intent:bool prop ->
  ?is_fallback:bool prop ->
  ?labels:(string * string prop) list ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?priority:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  ?training_phrases:training_phrases list ->
  display_name:string prop ->
  unit ->
  google_dialogflow_cx_intent

val yojson_of_google_dialogflow_cx_intent :
  google_dialogflow_cx_intent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  is_default_negative_intent : bool prop;
  is_default_welcome_intent : bool prop;
  is_fallback : bool prop;
  labels : (string * string) list prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_negative_intent:bool prop ->
  ?is_default_welcome_intent:bool prop ->
  ?is_fallback:bool prop ->
  ?labels:(string * string prop) list ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?priority:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  ?training_phrases:training_phrases list ->
  display_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?is_default_negative_intent:bool prop ->
  ?is_default_welcome_intent:bool prop ->
  ?is_fallback:bool prop ->
  ?labels:(string * string prop) list ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?priority:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  ?training_phrases:training_phrases list ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
