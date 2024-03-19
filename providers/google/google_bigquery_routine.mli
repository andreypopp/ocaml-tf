(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type arguments

val arguments :
  ?argument_kind:string prop ->
  ?data_type:string prop ->
  ?mode:string prop ->
  ?name:string prop ->
  unit ->
  arguments

type remote_function_options

val remote_function_options :
  ?connection:string prop ->
  ?endpoint:string prop ->
  ?max_batching_rows:string prop ->
  ?user_defined_context:(string * string prop) list ->
  unit ->
  remote_function_options

type spark_options

val spark_options :
  ?archive_uris:string prop list ->
  ?connection:string prop ->
  ?container_image:string prop ->
  ?file_uris:string prop list ->
  ?jar_uris:string prop list ->
  ?main_class:string prop ->
  ?main_file_uri:string prop ->
  ?properties:(string * string prop) list ->
  ?py_file_uris:string prop list ->
  ?runtime_version:string prop ->
  unit ->
  spark_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  arguments:arguments list ->
  remote_function_options:remote_function_options list ->
  spark_options:spark_options list ->
  unit ->
  google_bigquery_routine

val yojson_of_google_bigquery_routine :
  google_bigquery_routine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_time : float prop;
  dataset_id : string prop;
  definition_body : string prop;
  description : string prop;
  determinism_level : string prop;
  id : string prop;
  imported_libraries : string list prop;
  language : string prop;
  last_modified_time : float prop;
  project : string prop;
  return_table_type : string prop;
  return_type : string prop;
  routine_id : string prop;
  routine_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?determinism_level:string prop ->
  ?id:string prop ->
  ?imported_libraries:string prop list ->
  ?language:string prop ->
  ?project:string prop ->
  ?return_table_type:string prop ->
  ?return_type:string prop ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  arguments:arguments list ->
  remote_function_options:remote_function_options list ->
  spark_options:spark_options list ->
  string ->
  t
