(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type snapshot_delivery_properties

val snapshot_delivery_properties :
  ?delivery_frequency:string prop ->
  unit ->
  snapshot_delivery_properties

type aws_config_delivery_channel

val aws_config_delivery_channel :
  ?id:string prop ->
  ?name:string prop ->
  ?s3_key_prefix:string prop ->
  ?s3_kms_key_arn:string prop ->
  ?sns_topic_arn:string prop ->
  ?snapshot_delivery_properties:snapshot_delivery_properties list ->
  s3_bucket_name:string prop ->
  unit ->
  aws_config_delivery_channel

val yojson_of_aws_config_delivery_channel :
  aws_config_delivery_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  s3_kms_key_arn : string prop;
  sns_topic_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?s3_key_prefix:string prop ->
  ?s3_kms_key_arn:string prop ->
  ?sns_topic_arn:string prop ->
  ?snapshot_delivery_properties:snapshot_delivery_properties list ->
  s3_bucket_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?s3_key_prefix:string prop ->
  ?s3_kms_key_arn:string prop ->
  ?sns_topic_arn:string prop ->
  ?snapshot_delivery_properties:snapshot_delivery_properties list ->
  s3_bucket_name:string prop ->
  string ->
  t Tf_core.resource
