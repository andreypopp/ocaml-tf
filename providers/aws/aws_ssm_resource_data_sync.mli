(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_destination

val s3_destination :
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  ?sync_format:string prop ->
  bucket_name:string prop ->
  region:string prop ->
  unit ->
  s3_destination

type aws_ssm_resource_data_sync

val aws_ssm_resource_data_sync :
  ?id:string prop ->
  name:string prop ->
  s3_destination:s3_destination list ->
  unit ->
  aws_ssm_resource_data_sync

val yojson_of_aws_ssm_resource_data_sync :
  aws_ssm_resource_data_sync -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  s3_destination:s3_destination list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  s3_destination:s3_destination list ->
  string ->
  t Tf_core.resource
