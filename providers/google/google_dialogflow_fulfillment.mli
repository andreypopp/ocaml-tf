(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type features

val features : type_:string prop -> unit -> features

type generic_web_service

val generic_web_service :
  ?password:string prop ->
  ?request_headers:string prop Tf_core.assoc ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  generic_web_service

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_fulfillment

val google_dialogflow_fulfillment :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?features:features list ->
  ?generic_web_service:generic_web_service list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_dialogflow_fulfillment

val yojson_of_google_dialogflow_fulfillment :
  google_dialogflow_fulfillment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?features:features list ->
  ?generic_web_service:generic_web_service list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?features:features list ->
  ?generic_web_service:generic_web_service list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
