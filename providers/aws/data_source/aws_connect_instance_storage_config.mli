(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_config__s3_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}

type storage_config__s3_config = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  encryption_config :
    storage_config__s3_config__encryption_config list;
      (** encryption_config *)
}

type storage_config__kinesis_video_stream_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}

type storage_config__kinesis_video_stream_config = {
  encryption_config :
    storage_config__kinesis_video_stream_config__encryption_config
    list;
      (** encryption_config *)
  prefix : string prop;  (** prefix *)
  retention_period_hours : float prop;  (** retention_period_hours *)
}

type storage_config__kinesis_stream_config = {
  stream_arn : string prop;  (** stream_arn *)
}

type storage_config__kinesis_firehose_config = {
  firehose_arn : string prop;  (** firehose_arn *)
}

type storage_config = {
  kinesis_firehose_config :
    storage_config__kinesis_firehose_config list;
      (** kinesis_firehose_config *)
  kinesis_stream_config : storage_config__kinesis_stream_config list;
      (** kinesis_stream_config *)
  kinesis_video_stream_config :
    storage_config__kinesis_video_stream_config list;
      (** kinesis_video_stream_config *)
  s3_config : storage_config__s3_config list;  (** s3_config *)
  storage_type : string prop;  (** storage_type *)
}

type aws_connect_instance_storage_config

val aws_connect_instance_storage_config :
  ?id:string prop ->
  association_id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
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
  storage_config : storage_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  association_id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  association_id:string prop ->
  instance_id:string prop ->
  resource_type:string prop ->
  string ->
  t Tf_core.resource
