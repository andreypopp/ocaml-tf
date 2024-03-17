(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_sink__bigquery_options
type google_logging_folder_sink__exclusions
type google_logging_folder_sink

val google_logging_folder_sink :
  ?description:string ->
  ?disabled:bool ->
  ?filter:string ->
  ?include_children:bool ->
  destination:string ->
  folder:string ->
  name:string ->
  bigquery_options:google_logging_folder_sink__bigquery_options list ->
  exclusions:google_logging_folder_sink__exclusions list ->
  string ->
  unit
