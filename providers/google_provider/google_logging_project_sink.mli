(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_project_sink__bigquery_options
type google_logging_project_sink__exclusions
type google_logging_project_sink

val google_logging_project_sink :
  ?custom_writer_identity:string ->
  ?description:string ->
  ?disabled:bool ->
  ?filter:string ->
  ?unique_writer_identity:bool ->
  destination:string ->
  name:string ->
  bigquery_options:google_logging_project_sink__bigquery_options list ->
  exclusions:google_logging_project_sink__exclusions list ->
  string ->
  unit
