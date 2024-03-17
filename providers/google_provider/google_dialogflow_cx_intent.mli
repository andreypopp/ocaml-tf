(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_intent__parameters
type google_dialogflow_cx_intent__timeouts
type google_dialogflow_cx_intent__training_phrases__parts
type google_dialogflow_cx_intent__training_phrases
type google_dialogflow_cx_intent

val google_dialogflow_cx_intent :
  ?description:string ->
  ?id:string ->
  ?is_default_negative_intent:bool ->
  ?is_default_welcome_intent:bool ->
  ?is_fallback:bool ->
  ?labels:(string * string) list ->
  ?language_code:string ->
  ?parent:string ->
  ?priority:float ->
  ?timeouts:google_dialogflow_cx_intent__timeouts ->
  display_name:string ->
  parameters:google_dialogflow_cx_intent__parameters list ->
  training_phrases:google_dialogflow_cx_intent__training_phrases list ->
  string ->
  unit
