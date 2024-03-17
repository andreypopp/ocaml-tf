(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastictranscoder_pipeline__content_config
type aws_elastictranscoder_pipeline__content_config_permissions
type aws_elastictranscoder_pipeline__notifications
type aws_elastictranscoder_pipeline__thumbnail_config
type aws_elastictranscoder_pipeline__thumbnail_config_permissions
type aws_elastictranscoder_pipeline

val aws_elastictranscoder_pipeline :
  ?aws_kms_key_arn:string ->
  input_bucket:string ->
  role:string ->
  content_config:aws_elastictranscoder_pipeline__content_config list ->
  content_config_permissions:
    aws_elastictranscoder_pipeline__content_config_permissions list ->
  notifications:aws_elastictranscoder_pipeline__notifications list ->
  thumbnail_config:
    aws_elastictranscoder_pipeline__thumbnail_config list ->
  thumbnail_config_permissions:
    aws_elastictranscoder_pipeline__thumbnail_config_permissions list ->
  string ->
  unit
