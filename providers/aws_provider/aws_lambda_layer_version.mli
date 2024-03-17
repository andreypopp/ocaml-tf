(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_layer_version

val aws_lambda_layer_version :
  ?compatible_architectures:string list ->
  ?compatible_runtimes:string list ->
  ?description:string ->
  ?filename:string ->
  ?id:string ->
  ?license_info:string ->
  ?s3_bucket:string ->
  ?s3_key:string ->
  ?s3_object_version:string ->
  ?skip_destroy:bool ->
  ?source_code_hash:string ->
  layer_name:string ->
  string ->
  unit
