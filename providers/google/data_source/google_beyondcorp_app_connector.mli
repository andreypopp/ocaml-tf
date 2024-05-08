(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type principal_info__service_account = {
  email : string prop;  (** email *)
}

type principal_info = {
  service_account : principal_info__service_account list;
      [@default []] [@yojson_drop_default ( = )]
      (** service_account *)
}

type google_beyondcorp_app_connector

val google_beyondcorp_app_connector :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_beyondcorp_app_connector

val yojson_of_google_beyondcorp_app_connector :
  google_beyondcorp_app_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  principal_info : principal_info list prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
