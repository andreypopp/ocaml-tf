(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?user_defined_context:string prop Tf_core.assoc ->
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
  ?properties:string prop Tf_core.assoc ->
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
  ?data_governance_type:string prop ->
  ?description:string prop ->
  ?determinism_level:string prop ->
  ?id:string prop ->
  ?imported_libraries:string prop list ->
  ?language:string prop ->
  ?project:string prop ->
  ?return_table_type:string prop ->
  ?return_type:string prop ->
  ?arguments:arguments list ->
  ?remote_function_options:remote_function_options list ->
  ?spark_options:spark_options list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  unit ->
  google_bigquery_routine

val yojson_of_google_bigquery_routine :
  google_bigquery_routine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_time : float prop;
  data_governance_type : string prop;
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
  ?data_governance_type:string prop ->
  ?description:string prop ->
  ?determinism_level:string prop ->
  ?id:string prop ->
  ?imported_libraries:string prop list ->
  ?language:string prop ->
  ?project:string prop ->
  ?return_table_type:string prop ->
  ?return_type:string prop ->
  ?arguments:arguments list ->
  ?remote_function_options:remote_function_options list ->
  ?spark_options:spark_options list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  string ->
  t

val make :
  ?data_governance_type:string prop ->
  ?description:string prop ->
  ?determinism_level:string prop ->
  ?id:string prop ->
  ?imported_libraries:string prop list ->
  ?language:string prop ->
  ?project:string prop ->
  ?return_table_type:string prop ->
  ?return_type:string prop ->
  ?arguments:arguments list ->
  ?remote_function_options:remote_function_options list ->
  ?spark_options:spark_options list ->
  ?timeouts:timeouts ->
  dataset_id:string prop ->
  definition_body:string prop ->
  routine_id:string prop ->
  routine_type:string prop ->
  string ->
  t Tf_core.resource
