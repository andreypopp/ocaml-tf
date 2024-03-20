(** Use this data source to access the configuration of the Google Cloud provider. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_client_config

val google_client_config : unit -> google_client_config
val yojson_of_google_client_config : google_client_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_token : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
