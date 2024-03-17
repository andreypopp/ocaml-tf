(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_instance_storage_config__storage_config__kinesis_firehose_config = {
  firehose_arn : string;  (** firehose_arn *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_firehose_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_stream_config = {
  stream_arn : string;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_stream_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config = {
  encryption_type : string;  (** encryption_type *)
  key_id : string;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config = {
  prefix : string;  (** prefix *)
  retention_period_hours : float;  (** retention_period_hours *)
  encryption_config :
    aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config *)

type aws_connect_instance_storage_config__storage_config__s3_config__encryption_config = {
  encryption_type : string;  (** encryption_type *)
  key_id : string;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__s3_config__encryption_config *)

type aws_connect_instance_storage_config__storage_config__s3_config = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string;  (** bucket_prefix *)
  encryption_config :
    aws_connect_instance_storage_config__storage_config__s3_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__s3_config *)

type aws_connect_instance_storage_config__storage_config = {
  storage_type : string;  (** storage_type *)
  kinesis_firehose_config :
    aws_connect_instance_storage_config__storage_config__kinesis_firehose_config
    list;
  kinesis_stream_config :
    aws_connect_instance_storage_config__storage_config__kinesis_stream_config
    list;
  kinesis_video_stream_config :
    aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config
    list;
  s3_config :
    aws_connect_instance_storage_config__storage_config__s3_config
    list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config *)

type aws_connect_instance_storage_config = {
  instance_id : string;  (** instance_id *)
  resource_type : string;  (** resource_type *)
  storage_config :
    aws_connect_instance_storage_config__storage_config list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config *)

let aws_connect_instance_storage_config ~instance_id ~resource_type
    ~storage_config __resource_id =
  let __resource_type = "aws_connect_instance_storage_config" in
  let __resource = { instance_id; resource_type; storage_config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_instance_storage_config __resource);
  ()
