(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type entities

val entities :
  synonyms:string prop list -> value:string prop -> unit -> entities

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_entity_type

val google_dialogflow_entity_type :
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?entities:entities list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  unit ->
  google_dialogflow_entity_type

val yojson_of_google_dialogflow_entity_type :
  google_dialogflow_entity_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  enable_fuzzy_extraction : bool prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?entities:entities list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  string ->
  t

val make :
  ?enable_fuzzy_extraction:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?entities:entities list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  kind:string prop ->
  string ->
  t Tf_core.resource
