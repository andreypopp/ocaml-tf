(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_project_sink__bigquery_options
type google_logging_project_sink__exclusions
type google_logging_project_sink

val google_logging_project_sink :
  ?custom_writer_identity:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?unique_writer_identity:bool prop ->
  destination:string prop ->
  name:string prop ->
  bigquery_options:google_logging_project_sink__bigquery_options list ->
  exclusions:google_logging_project_sink__exclusions list ->
  string ->
  unit
