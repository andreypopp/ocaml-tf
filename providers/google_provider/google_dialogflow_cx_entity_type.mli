(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_entity_type__entities
type google_dialogflow_cx_entity_type__excluded_phrases
type google_dialogflow_cx_entity_type__timeouts
type google_dialogflow_cx_entity_type

val google_dialogflow_cx_entity_type :
  ?auto_expansion_mode:string prop ->
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?redact:bool prop ->
  ?timeouts:google_dialogflow_cx_entity_type__timeouts ->
  display_name:string prop ->
  kind:string prop ->
  entities:google_dialogflow_cx_entity_type__entities list ->
  excluded_phrases:
    google_dialogflow_cx_entity_type__excluded_phrases list ->
  string ->
  unit
