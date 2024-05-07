(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trust_stores__intermediate_cas

val trust_stores__intermediate_cas :
  ?pem_certificate:string prop ->
  unit ->
  trust_stores__intermediate_cas

type trust_stores__trust_anchors

val trust_stores__trust_anchors :
  ?pem_certificate:string prop -> unit -> trust_stores__trust_anchors

type trust_stores

val trust_stores :
  ?intermediate_cas:trust_stores__intermediate_cas list ->
  ?trust_anchors:trust_stores__trust_anchors list ->
  unit ->
  trust_stores

type google_certificate_manager_trust_config

val google_certificate_manager_trust_config :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  ?trust_stores:trust_stores list ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_certificate_manager_trust_config

val yojson_of_google_certificate_manager_trust_config :
  google_certificate_manager_trust_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  ?trust_stores:trust_stores list ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  ?trust_stores:trust_stores list ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
