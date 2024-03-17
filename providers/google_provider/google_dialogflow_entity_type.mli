(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_entity_type__entities
type google_dialogflow_entity_type__timeouts
type google_dialogflow_entity_type

val google_dialogflow_entity_type :
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_dialogflow_entity_type__timeouts ->
  display_name:string prop ->
  kind:string prop ->
  entities:google_dialogflow_entity_type__entities list ->
  string ->
  unit
