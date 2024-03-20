(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_layer_version

val aws_lambda_layer_version :
  ?compatible_architecture:string prop ->
  ?compatible_runtime:string prop ->
  ?id:string prop ->
  ?version:float prop ->
  layer_name:string prop ->
  unit ->
  aws_lambda_layer_version

val yojson_of_aws_lambda_layer_version :
  aws_lambda_layer_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  compatible_architecture : string prop;
  compatible_architectures : string list prop;
  compatible_runtime : string prop;
  compatible_runtimes : string list prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  layer_arn : string prop;
  layer_name : string prop;
  license_info : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?compatible_architecture:string prop ->
  ?compatible_runtime:string prop ->
  ?id:string prop ->
  ?version:float prop ->
  layer_name:string prop ->
  string ->
  t

val make :
  ?compatible_architecture:string prop ->
  ?compatible_runtime:string prop ->
  ?id:string prop ->
  ?version:float prop ->
  layer_name:string prop ->
  string ->
  t Tf_core.resource
