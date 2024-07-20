(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_logging

val aws_redshift_logging :
  ?bucket_name:string prop ->
  ?log_destination_type:string prop ->
  ?log_exports:string prop list ->
  ?s3_key_prefix:string prop ->
  cluster_identifier:string prop ->
  unit ->
  aws_redshift_logging

val yojson_of_aws_redshift_logging : aws_redshift_logging -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket_name : string prop;
  cluster_identifier : string prop;
  id : string prop;
  log_destination_type : string prop;
  log_exports : string list prop;
  s3_key_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bucket_name:string prop ->
  ?log_destination_type:string prop ->
  ?log_exports:string prop list ->
  ?s3_key_prefix:string prop ->
  cluster_identifier:string prop ->
  string ->
  t

val make :
  ?bucket_name:string prop ->
  ?log_destination_type:string prop ->
  ?log_exports:string prop list ->
  ?s3_key_prefix:string prop ->
  cluster_identifier:string prop ->
  string ->
  t Tf_core.resource
