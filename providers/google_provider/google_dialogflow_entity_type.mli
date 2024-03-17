(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_entity_type__entities
type google_dialogflow_entity_type__timeouts
type google_dialogflow_entity_type

val google_dialogflow_entity_type :
  ?enable_fuzzy_extraction:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_dialogflow_entity_type__timeouts ->
  display_name:string ->
  kind:string ->
  entities:google_dialogflow_entity_type__entities list ->
  string ->
  unit
