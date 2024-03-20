(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_config__kinesis_firehose_config = {
  firehose_arn : string prop;  (** firehose_arn *)
}
[@@deriving yojson_of]
(** storage_config__kinesis_firehose_config *)

type storage_config__kinesis_stream_config = {
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** storage_config__kinesis_stream_config *)

type storage_config__kinesis_video_stream_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}
[@@deriving yojson_of]
(** storage_config__kinesis_video_stream_config__encryption_config *)

type storage_config__kinesis_video_stream_config = {
  prefix : string prop;  (** prefix *)
  retention_period_hours : float prop;  (** retention_period_hours *)
  encryption_config :
    storage_config__kinesis_video_stream_config__encryption_config
    list;
}
[@@deriving yojson_of]
(** storage_config__kinesis_video_stream_config *)

type storage_config__s3_config__encryption_config = {
  encryption_type : string prop;  (** encryption_type *)
  key_id : string prop;  (** key_id *)
}
[@@deriving yojson_of]
(** storage_config__s3_config__encryption_config *)

type storage_config__s3_config = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  encryption_config :
    storage_config__s3_config__encryption_config list;
}
[@@deriving yojson_of]
(** storage_config__s3_config *)

type storage_config = {
  storage_type : string prop;  (** storage_type *)
  kinesis_firehose_config :
    storage_config__kinesis_firehose_config list;
  kinesis_stream_config : storage_config__kinesis_stream_config list;
  kinesis_video_stream_config :
    storage_config__kinesis_video_stream_config list;
  s3_config : storage_config__s3_config list;
}
[@@deriving yojson_of]
(** storage_config *)

type aws_connect_instance_storage_config = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  resource_type : string prop;  (** resource_type *)
  storage_config : storage_config list;
}
[@@deriving yojson_of]
(** aws_connect_instance_storage_config *)

let storage_config__kinesis_firehose_config ~firehose_arn () :
    storage_config__kinesis_firehose_config =
  { firehose_arn }

let storage_config__kinesis_stream_config ~stream_arn () :
    storage_config__kinesis_stream_config =
  { stream_arn }

let storage_config__kinesis_video_stream_config__encryption_config
    ~encryption_type ~key_id () :
    storage_config__kinesis_video_stream_config__encryption_config =
  { encryption_type; key_id }

let storage_config__kinesis_video_stream_config ~prefix
    ~retention_period_hours ~encryption_config () :
    storage_config__kinesis_video_stream_config =
  { prefix; retention_period_hours; encryption_config }

let storage_config__s3_config__encryption_config ~encryption_type
    ~key_id () : storage_config__s3_config__encryption_config =
  { encryption_type; key_id }

let storage_config__s3_config ~bucket_name ~bucket_prefix
    ~encryption_config () : storage_config__s3_config =
  { bucket_name; bucket_prefix; encryption_config }

let storage_config ~storage_type ~kinesis_firehose_config
    ~kinesis_stream_config ~kinesis_video_stream_config ~s3_config ()
    : storage_config =
  {
    storage_type;
    kinesis_firehose_config;
    kinesis_stream_config;
    kinesis_video_stream_config;
    s3_config;
  }

let aws_connect_instance_storage_config ?id ~instance_id
    ~resource_type ~storage_config () :
    aws_connect_instance_storage_config =
  { id; instance_id; resource_type; storage_config }

type t = {
  association_id : string prop;
  id : string prop;
  instance_id : string prop;
  resource_type : string prop;
}

let make ?id ~instance_id ~resource_type ~storage_config __id =
  let __type = "aws_connect_instance_storage_config" in
  let __attrs =
    ({
       association_id = Prop.computed __type __id "association_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_instance_storage_config
        (aws_connect_instance_storage_config ?id ~instance_id
           ~resource_type ~storage_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_id ~resource_type
    ~storage_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_id ~resource_type ~storage_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
