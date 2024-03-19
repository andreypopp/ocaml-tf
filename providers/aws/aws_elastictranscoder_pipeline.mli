(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type content_config

val content_config :
  ?bucket:string prop ->
  ?storage_class:string prop ->
  unit ->
  content_config

type content_config_permissions

val content_config_permissions :
  ?access:string prop list ->
  ?grantee:string prop ->
  ?grantee_type:string prop ->
  unit ->
  content_config_permissions

type notifications

val notifications :
  ?completed:string prop ->
  ?error:string prop ->
  ?progressing:string prop ->
  ?warning:string prop ->
  unit ->
  notifications

type thumbnail_config

val thumbnail_config :
  ?bucket:string prop ->
  ?storage_class:string prop ->
  unit ->
  thumbnail_config

type thumbnail_config_permissions

val thumbnail_config_permissions :
  ?access:string prop list ->
  ?grantee:string prop ->
  ?grantee_type:string prop ->
  unit ->
  thumbnail_config_permissions

type aws_elastictranscoder_pipeline

val aws_elastictranscoder_pipeline :
  ?aws_kms_key_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?output_bucket:string prop ->
  input_bucket:string prop ->
  role:string prop ->
  content_config:content_config list ->
  content_config_permissions:content_config_permissions list ->
  notifications:notifications list ->
  thumbnail_config:thumbnail_config list ->
  thumbnail_config_permissions:thumbnail_config_permissions list ->
  unit ->
  aws_elastictranscoder_pipeline

val yojson_of_aws_elastictranscoder_pipeline :
  aws_elastictranscoder_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  aws_kms_key_arn : string prop;
  id : string prop;
  input_bucket : string prop;
  name : string prop;
  output_bucket : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_kms_key_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?output_bucket:string prop ->
  input_bucket:string prop ->
  role:string prop ->
  content_config:content_config list ->
  content_config_permissions:content_config_permissions list ->
  notifications:notifications list ->
  thumbnail_config:thumbnail_config list ->
  thumbnail_config_permissions:thumbnail_config_permissions list ->
  string ->
  t
