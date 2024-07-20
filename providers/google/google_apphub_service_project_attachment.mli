(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apphub_service_project_attachment

val google_apphub_service_project_attachment :
  ?id:string prop ->
  ?project:string prop ->
  ?service_project:string prop ->
  ?timeouts:timeouts ->
  service_project_attachment_id:string prop ->
  unit ->
  google_apphub_service_project_attachment

val yojson_of_google_apphub_service_project_attachment :
  google_apphub_service_project_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_project : string prop;
  service_project_attachment_id : string prop;
  state : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?service_project:string prop ->
  ?timeouts:timeouts ->
  service_project_attachment_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?service_project:string prop ->
  ?timeouts:timeouts ->
  service_project_attachment_id:string prop ->
  string ->
  t Tf_core.resource
