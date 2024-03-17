(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
