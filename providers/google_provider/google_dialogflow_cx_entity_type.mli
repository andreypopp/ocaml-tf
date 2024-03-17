(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_entity_type__entities
type google_dialogflow_cx_entity_type__excluded_phrases
type google_dialogflow_cx_entity_type__timeouts
type google_dialogflow_cx_entity_type

val google_dialogflow_cx_entity_type :
  ?auto_expansion_mode:string ->
  ?enable_fuzzy_extraction:bool ->
  ?language_code:string ->
  ?parent:string ->
  ?redact:bool ->
  ?timeouts:google_dialogflow_cx_entity_type__timeouts ->
  display_name:string ->
  kind:string ->
  entities:google_dialogflow_cx_entity_type__entities list ->
  excluded_phrases:
    google_dialogflow_cx_entity_type__excluded_phrases list ->
  string ->
  unit
