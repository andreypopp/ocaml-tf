(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_endpoint

val application_endpoint :
  host:string prop -> port:float prop -> unit -> application_endpoint

type gateway

val gateway :
  ?type_:string prop -> app_gateway:string prop -> unit -> gateway

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_beyondcorp_app_connection

val google_beyondcorp_app_connection :
  ?connectors:string prop list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?gateway:gateway list ->
  ?timeouts:timeouts ->
  name:string prop ->
  application_endpoint:application_endpoint list ->
  unit ->
  google_beyondcorp_app_connection

val yojson_of_google_beyondcorp_app_connection :
  google_beyondcorp_app_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connectors : string list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connectors:string prop list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?gateway:gateway list ->
  ?timeouts:timeouts ->
  name:string prop ->
  application_endpoint:application_endpoint list ->
  string ->
  t

val make :
  ?connectors:string prop list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?gateway:gateway list ->
  ?timeouts:timeouts ->
  name:string prop ->
  application_endpoint:application_endpoint list ->
  string ->
  t Tf_core.resource
