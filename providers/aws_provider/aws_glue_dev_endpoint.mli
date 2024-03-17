(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_dev_endpoint

val aws_glue_dev_endpoint :
  ?arguments:(string * string) list ->
  ?extra_jars_s3_path:string ->
  ?extra_python_libs_s3_path:string ->
  ?glue_version:string ->
  ?number_of_nodes:float ->
  ?number_of_workers:float ->
  ?public_key:string ->
  ?public_keys:string list ->
  ?security_configuration:string ->
  ?security_group_ids:string list ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?worker_type:string ->
  name:string ->
  role_arn:string ->
  string ->
  unit
