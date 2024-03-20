(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type principal_info__service_account

val principal_info__service_account :
  email:string prop -> unit -> principal_info__service_account

type principal_info

val principal_info :
  service_account:principal_info__service_account list ->
  unit ->
  principal_info

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_beyondcorp_app_connector

val google_beyondcorp_app_connector :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_info:principal_info list ->
  unit ->
  google_beyondcorp_app_connector

val yojson_of_google_beyondcorp_app_connector :
  google_beyondcorp_app_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_info:principal_info list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_info:principal_info list ->
  string ->
  t Tf_core.resource
