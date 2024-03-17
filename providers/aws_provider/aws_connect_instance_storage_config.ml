(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_instance_storage_config__storage_config__kinesis_firehose_config = {
  firehose_arn : string prop;  (** firehose_arn *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_firehose_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_stream_config = {
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_stream_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config *)

type aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config = {
  prefix : string prop;  (** prefix *)
  retention_period_hours : float prop;  (** retention_period_hours *)
  encryption_config :
    aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__kinesis_video_stream_config *)

type aws_connect_instance_storage_config__storage_config__s3_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__s3_config__encryption_config *)

type aws_connect_instance_storage_config__storage_config__s3_config = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  encryption_config :
    aws_connect_instance_storage_config__storage_config__s3_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config__storage_config__s3_config *)

type aws_connect_instance_storage_config__storage_config = {
  storage_type : string prop;  (** storage_type *)
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
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  resource_type : string prop;  (** resource_type *)
  storage_config :
    aws_connect_instance_storage_config__storage_config list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config *)

type t = {
  association_id : string prop;
  id : string prop;
  instance_id : string prop;
  resource_type : string prop;
}

let aws_connect_instance_storage_config ?id ~instance_id
    ~resource_type ~storage_config __resource_id =
  let __resource_type = "aws_connect_instance_storage_config" in
  let __resource =
    ({ id; instance_id; resource_type; storage_config }
      : aws_connect_instance_storage_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_instance_storage_config __resource);
  let __resource_attributes =
    ({
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
     }
      : t)
  in
  __resource_attributes
