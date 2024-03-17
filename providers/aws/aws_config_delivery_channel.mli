(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_delivery_channel__snapshot_delivery_properties
type aws_config_delivery_channel

type t = private {
  id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  s3_kms_key_arn : string prop;
  sns_topic_arn : string prop;
}

val aws_config_delivery_channel :
  ?id:string prop ->
  ?name:string prop ->
  ?s3_key_prefix:string prop ->
  ?s3_kms_key_arn:string prop ->
  ?sns_topic_arn:string prop ->
  s3_bucket_name:string prop ->
  snapshot_delivery_properties:
    aws_config_delivery_channel__snapshot_delivery_properties list ->
  string ->
  t
