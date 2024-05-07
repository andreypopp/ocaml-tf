(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type runtime

val runtime :
  name:string prop -> runtime_version:string prop -> unit -> runtime

type sync_config__lambda_conflict_handler_config

val sync_config__lambda_conflict_handler_config :
  ?lambda_conflict_handler_arn:string prop ->
  unit ->
  sync_config__lambda_conflict_handler_config

type sync_config

val sync_config :
  ?conflict_detection:string prop ->
  ?conflict_handler:string prop ->
  ?lambda_conflict_handler_config:
    sync_config__lambda_conflict_handler_config list ->
  unit ->
  sync_config

type aws_appsync_function

val aws_appsync_function :
  ?code:string prop ->
  ?description:string prop ->
  ?function_version:string prop ->
  ?id:string prop ->
  ?max_batch_size:float prop ->
  ?request_mapping_template:string prop ->
  ?response_mapping_template:string prop ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  data_source:string prop ->
  name:string prop ->
  unit ->
  aws_appsync_function

val yojson_of_aws_appsync_function : aws_appsync_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  description : string prop;
  function_id : string prop;
  function_version : string prop;
  id : string prop;
  max_batch_size : float prop;
  name : string prop;
  request_mapping_template : string prop;
  response_mapping_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?code:string prop ->
  ?description:string prop ->
  ?function_version:string prop ->
  ?id:string prop ->
  ?max_batch_size:float prop ->
  ?request_mapping_template:string prop ->
  ?response_mapping_template:string prop ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  data_source:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?code:string prop ->
  ?description:string prop ->
  ?function_version:string prop ->
  ?id:string prop ->
  ?max_batch_size:float prop ->
  ?request_mapping_template:string prop ->
  ?response_mapping_template:string prop ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  data_source:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
