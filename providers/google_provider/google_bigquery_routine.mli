(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_routine__arguments
type google_bigquery_routine__remote_function_options
type google_bigquery_routine__spark_options
type google_bigquery_routine__timeouts
type google_bigquery_routine

val google_bigquery_routine :
  ?description:string ->
  ?determinism_level:string ->
  ?id:string ->
  ?imported_libraries:string list ->
  ?language:string ->
  ?project:string ->
  ?return_table_type:string ->
  ?return_type:string ->
  ?timeouts:google_bigquery_routine__timeouts ->
  dataset_id:string ->
  definition_body:string ->
  routine_id:string ->
  routine_type:string ->
  arguments:google_bigquery_routine__arguments list ->
  remote_function_options:
    google_bigquery_routine__remote_function_options list ->
  spark_options:google_bigquery_routine__spark_options list ->
  string ->
  unit
