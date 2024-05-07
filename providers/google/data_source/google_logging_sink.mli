(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_options = {
  use_partitioned_tables : bool prop;  (** use_partitioned_tables *)
}

type exclusions = {
  description : string prop;  (** description *)
  disabled : bool prop;  (** disabled *)
  filter : string prop;  (** filter *)
  name : string prop;  (** name *)
}

type google_logging_sink

val google_logging_sink :
  id:string prop -> unit -> google_logging_sink

val yojson_of_google_logging_sink : google_logging_sink -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bigquery_options : bigquery_options list prop;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  exclusions : exclusions list prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  writer_identity : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
