(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type entities

val entities :
  ?synonyms:string prop list ->
  ?value:string prop ->
  unit ->
  entities

type excluded_phrases

val excluded_phrases : ?value:string prop -> unit -> excluded_phrases

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_cx_entity_type

val google_dialogflow_cx_entity_type :
  ?auto_expansion_mode:string prop ->
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?redact:bool prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  entities:entities list ->
  excluded_phrases:excluded_phrases list ->
  unit ->
  google_dialogflow_cx_entity_type

val yojson_of_google_dialogflow_cx_entity_type :
  google_dialogflow_cx_entity_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_expansion_mode : string prop;
  display_name : string prop;
  enable_fuzzy_extraction : bool prop;
  id : string prop;
  kind : string prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  redact : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_expansion_mode:string prop ->
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?redact:bool prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  entities:entities list ->
  excluded_phrases:excluded_phrases list ->
  string ->
  t

val make :
  ?auto_expansion_mode:string prop ->
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?parent:string prop ->
  ?redact:bool prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  entities:entities list ->
  excluded_phrases:excluded_phrases list ->
  string ->
  t Tf_core.resource
