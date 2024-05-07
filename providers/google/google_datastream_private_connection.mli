(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type error = {
  details : (string * string prop) list;  (** details *)
  message : string prop;  (** message *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_peering_config

val vpc_peering_config :
  subnet:string prop -> vpc:string prop -> unit -> vpc_peering_config

type google_datastream_private_connection

val google_datastream_private_connection :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  private_connection_id:string prop ->
  vpc_peering_config:vpc_peering_config list ->
  unit ->
  google_datastream_private_connection

val yojson_of_google_datastream_private_connection :
  google_datastream_private_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error : error list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  private_connection_id : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  private_connection_id:string prop ->
  vpc_peering_config:vpc_peering_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  private_connection_id:string prop ->
  vpc_peering_config:vpc_peering_config list ->
  string ->
  t Tf_core.resource
