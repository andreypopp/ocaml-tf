(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_delivery_channel__snapshot_delivery_properties
type aws_config_delivery_channel

val aws_config_delivery_channel :
  ?id:string ->
  ?name:string ->
  ?s3_key_prefix:string ->
  ?s3_kms_key_arn:string ->
  ?sns_topic_arn:string ->
  s3_bucket_name:string ->
  snapshot_delivery_properties:
    aws_config_delivery_channel__snapshot_delivery_properties list ->
  string ->
  unit
