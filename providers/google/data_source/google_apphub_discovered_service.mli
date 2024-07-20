(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_properties = {
  gcp_project : string prop;  (** gcp_project *)
  location : string prop;  (** location *)
  zone : string prop;  (** zone *)
}

type service_reference = {
  path : string prop;  (** path *)
  uri : string prop;  (** uri *)
}

type google_apphub_discovered_service

val google_apphub_discovered_service :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  service_uri:string prop ->
  unit ->
  google_apphub_discovered_service

val yojson_of_google_apphub_discovered_service :
  google_apphub_discovered_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_properties : service_properties list prop;
  service_reference : service_reference list prop;
  service_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  service_uri:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  service_uri:string prop ->
  string ->
  t Tf_core.resource
