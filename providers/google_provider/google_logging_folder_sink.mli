(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_sink__bigquery_options
type google_logging_folder_sink__exclusions
type google_logging_folder_sink

val google_logging_folder_sink :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?include_children:bool prop ->
  destination:string prop ->
  folder:string prop ->
  name:string prop ->
  bigquery_options:google_logging_folder_sink__bigquery_options list ->
  exclusions:google_logging_folder_sink__exclusions list ->
  string ->
  unit
