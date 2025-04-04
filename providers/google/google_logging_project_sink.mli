(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_options

val bigquery_options :
  use_partitioned_tables:bool prop -> unit -> bigquery_options

type exclusions

val exclusions :
  ?description:string prop ->
  ?disabled:bool prop ->
  filter:string prop ->
  name:string prop ->
  unit ->
  exclusions

type google_logging_project_sink

val google_logging_project_sink :
  ?custom_writer_identity:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?unique_writer_identity:bool prop ->
  ?bigquery_options:bigquery_options list ->
  ?exclusions:exclusions list ->
  destination:string prop ->
  name:string prop ->
  unit ->
  google_logging_project_sink

val yojson_of_google_logging_project_sink :
  google_logging_project_sink -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_writer_identity : string prop;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  unique_writer_identity : bool prop;
  writer_identity : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_writer_identity:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?unique_writer_identity:bool prop ->
  ?bigquery_options:bigquery_options list ->
  ?exclusions:exclusions list ->
  destination:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?custom_writer_identity:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?unique_writer_identity:bool prop ->
  ?bigquery_options:bigquery_options list ->
  ?exclusions:exclusions list ->
  destination:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
