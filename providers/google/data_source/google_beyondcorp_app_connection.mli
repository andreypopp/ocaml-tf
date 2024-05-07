(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_endpoint = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}

type gateway = {
  app_gateway : string prop;  (** app_gateway *)
  ingress_port : float prop;  (** ingress_port *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop;  (** uri *)
}

type google_beyondcorp_app_connection

val google_beyondcorp_app_connection :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_beyondcorp_app_connection

val yojson_of_google_beyondcorp_app_connection :
  google_beyondcorp_app_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_endpoint : application_endpoint list prop;
  connectors : string list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  gateway : gateway list prop;
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
