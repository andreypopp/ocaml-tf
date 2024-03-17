(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_instance_storage_config__storage_config__kinesis_firehose_config

type aws_connect_instance_storage_config__storage_config__kinesis_stream_config

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config

type aws_connect_instance_storage_config__storage_config__s3_config__encryption_config

type aws_connect_instance_storage_config__storage_config__s3_config
type aws_connect_instance_storage_config__storage_config
type aws_connect_instance_storage_config

type t = private {
  association_id : string prop;
  id : string prop;
  instance_id : string prop;
  resource_type : string prop;
}

val aws_connect_instance_storage_config :
  ?id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
  storage_config:
    aws_connect_instance_storage_config__storage_config list ->
  string ->
  t
