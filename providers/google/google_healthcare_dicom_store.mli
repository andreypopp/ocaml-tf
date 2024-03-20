(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification_config

val notification_config :
  pubsub_topic:string prop -> unit -> notification_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_healthcare_dicom_store

val google_healthcare_dicom_store :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:notification_config list ->
  unit ->
  google_healthcare_dicom_store

val yojson_of_google_healthcare_dicom_store :
  google_healthcare_dicom_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:notification_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:notification_config list ->
  string ->
  t Tf_core.resource
