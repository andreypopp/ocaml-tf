(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type storage_config__kinesis_firehose_config

val storage_config__kinesis_firehose_config :
  firehose_arn:string prop ->
  unit ->
  storage_config__kinesis_firehose_config

type storage_config__kinesis_stream_config

val storage_config__kinesis_stream_config :
  stream_arn:string prop ->
  unit ->
  storage_config__kinesis_stream_config

type storage_config__kinesis_video_stream_config__encryption_config

val storage_config__kinesis_video_stream_config__encryption_config :
  encryption_type:string prop ->
  key_id:string prop ->
  unit ->
  storage_config__kinesis_video_stream_config__encryption_config

type storage_config__kinesis_video_stream_config

val storage_config__kinesis_video_stream_config :
  prefix:string prop ->
  retention_period_hours:float prop ->
  encryption_config:
    storage_config__kinesis_video_stream_config__encryption_config
    list ->
  unit ->
  storage_config__kinesis_video_stream_config

type storage_config__s3_config__encryption_config

val storage_config__s3_config__encryption_config :
  encryption_type:string prop ->
  key_id:string prop ->
  unit ->
  storage_config__s3_config__encryption_config

type storage_config__s3_config

val storage_config__s3_config :
  bucket_name:string prop ->
  bucket_prefix:string prop ->
  encryption_config:storage_config__s3_config__encryption_config list ->
  unit ->
  storage_config__s3_config

type storage_config

val storage_config :
  storage_type:string prop ->
  kinesis_firehose_config:
    storage_config__kinesis_firehose_config list ->
  kinesis_stream_config:storage_config__kinesis_stream_config list ->
  kinesis_video_stream_config:
    storage_config__kinesis_video_stream_config list ->
  s3_config:storage_config__s3_config list ->
  unit ->
  storage_config

type aws_connect_instance_storage_config

val aws_connect_instance_storage_config :
  ?id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
  storage_config:storage_config list ->
  unit ->
  aws_connect_instance_storage_config

val yojson_of_aws_connect_instance_storage_config :
  aws_connect_instance_storage_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  association_id : string prop;
  id : string prop;
  instance_id : string prop;
  resource_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
  storage_config:storage_config list ->
  string ->
  t
