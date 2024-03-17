(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastictranscoder_pipeline__content_config
type aws_elastictranscoder_pipeline__content_config_permissions
type aws_elastictranscoder_pipeline__notifications
type aws_elastictranscoder_pipeline__thumbnail_config
type aws_elastictranscoder_pipeline__thumbnail_config_permissions
type aws_elastictranscoder_pipeline

type t = private {
  arn : string prop;
  aws_kms_key_arn : string prop;
  id : string prop;
  input_bucket : string prop;
  name : string prop;
  output_bucket : string prop;
  role : string prop;
}

val aws_elastictranscoder_pipeline :
  ?aws_kms_key_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?output_bucket:string prop ->
  input_bucket:string prop ->
  role:string prop ->
  content_config:aws_elastictranscoder_pipeline__content_config list ->
  content_config_permissions:
    aws_elastictranscoder_pipeline__content_config_permissions list ->
  notifications:aws_elastictranscoder_pipeline__notifications list ->
  thumbnail_config:
    aws_elastictranscoder_pipeline__thumbnail_config list ->
  thumbnail_config_permissions:
    aws_elastictranscoder_pipeline__thumbnail_config_permissions list ->
  string ->
  t
