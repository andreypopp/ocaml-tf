(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_intent__parameters
type google_dialogflow_cx_intent__timeouts
type google_dialogflow_cx_intent__training_phrases__parts
type google_dialogflow_cx_intent__training_phrases
type google_dialogflow_cx_intent

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
  ?timeouts:google_dialogflow_cx_intent__timeouts ->
  display_name:string prop ->
  parameters:google_dialogflow_cx_intent__parameters list ->
  training_phrases:google_dialogflow_cx_intent__training_phrases list ->
  string ->
  t
