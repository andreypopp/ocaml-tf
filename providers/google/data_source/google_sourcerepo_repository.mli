(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pubsub_configs = {
  message_format : string prop;  (** message_format *)
  service_account_email : string prop;  (** service_account_email *)
  topic : string prop;  (** topic *)
}

type google_sourcerepo_repository

val google_sourcerepo_repository :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_sourcerepo_repository

val yojson_of_google_sourcerepo_repository :
  google_sourcerepo_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  project : string prop;
  pubsub_configs : pubsub_configs list prop;
  size : float prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
