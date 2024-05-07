(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_layer_version

val aws_lambda_layer_version :
  ?compatible_architectures:string prop list ->
  ?compatible_runtimes:string prop list ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?license_info:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_object_version:string prop ->
  ?skip_destroy:bool prop ->
  ?source_code_hash:string prop ->
  layer_name:string prop ->
  unit ->
  aws_lambda_layer_version

val yojson_of_aws_lambda_layer_version :
  aws_lambda_layer_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compatible_architectures : string list prop;
  compatible_runtimes : string list prop;
  created_date : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  layer_arn : string prop;
  layer_name : string prop;
  license_info : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compatible_architectures:string prop list ->
  ?compatible_runtimes:string prop list ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?license_info:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_object_version:string prop ->
  ?skip_destroy:bool prop ->
  ?source_code_hash:string prop ->
  layer_name:string prop ->
  string ->
  t

val make :
  ?compatible_architectures:string prop list ->
  ?compatible_runtimes:string prop list ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?license_info:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_object_version:string prop ->
  ?skip_destroy:bool prop ->
  ?source_code_hash:string prop ->
  layer_name:string prop ->
  string ->
  t Tf_core.resource
