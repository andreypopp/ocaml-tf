(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_routine__arguments
type google_bigquery_routine__remote_function_options
type google_bigquery_routine__spark_options
type google_bigquery_routine__timeouts
type google_bigquery_routine

val google_bigquery_routine :
  ?description:string prop ->
  ?determinism_level:string prop ->
  ?id:string prop ->
  ?imported_libraries:string prop list ->
  ?language:string prop ->
  ?project:string prop ->
  ?return_table_type:string prop ->
  ?return_type:string prop ->
  ?timeouts:google_bigquery_routine__timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  arguments:google_bigquery_routine__arguments list ->
  remote_function_options:
    google_bigquery_routine__remote_function_options list ->
  spark_options:google_bigquery_routine__spark_options list ->
  string ->
  unit
