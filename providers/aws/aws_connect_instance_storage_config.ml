(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_config__kinesis_firehose_config = {
  firehose_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__kinesis_firehose_config) -> ()

let yojson_of_storage_config__kinesis_firehose_config =
  (function
   | { firehose_arn = v_firehose_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_firehose_arn in
         ("firehose_arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__kinesis_firehose_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__kinesis_firehose_config

[@@@deriving.end]

type storage_config__kinesis_stream_config = {
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__kinesis_stream_config) -> ()

let yojson_of_storage_config__kinesis_stream_config =
  (function
   | { stream_arn = v_stream_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__kinesis_stream_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__kinesis_stream_config

[@@@deriving.end]

type storage_config__kinesis_video_stream_config__encryption_config = {
  encryption_type : string prop;
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_config__kinesis_video_stream_config__encryption_config) ->
  ()

let yojson_of_storage_config__kinesis_video_stream_config__encryption_config
    =
  (function
   | { encryption_type = v_encryption_type; key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__kinesis_video_stream_config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_config__kinesis_video_stream_config__encryption_config

[@@@deriving.end]

type storage_config__kinesis_video_stream_config = {
  prefix : string prop;
  retention_period_hours : float prop;
  encryption_config :
    storage_config__kinesis_video_stream_config__encryption_config
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__kinesis_video_stream_config) -> ()

let yojson_of_storage_config__kinesis_video_stream_config =
  (function
   | {
       prefix = v_prefix;
       retention_period_hours = v_retention_period_hours;
       encryption_config = v_encryption_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_config__kinesis_video_stream_config__encryption_config
             v_encryption_config
         in
         ("encryption_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_hours
         in
         ("retention_period_hours", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__kinesis_video_stream_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__kinesis_video_stream_config

[@@@deriving.end]

type storage_config__s3_config__encryption_config = {
  encryption_type : string prop;
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__s3_config__encryption_config) -> ()

let yojson_of_storage_config__s3_config__encryption_config =
  (function
   | { encryption_type = v_encryption_type; key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__s3_config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__s3_config__encryption_config

[@@@deriving.end]

type storage_config__s3_config = {
  bucket_name : string prop;
  bucket_prefix : string prop;
  encryption_config :
    storage_config__s3_config__encryption_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__s3_config) -> ()

let yojson_of_storage_config__s3_config =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       encryption_config = v_encryption_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_config__s3_config__encryption_config
             v_encryption_config
         in
         ("encryption_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_prefix in
         ("bucket_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : storage_config__s3_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__s3_config

[@@@deriving.end]

type storage_config = {
  storage_type : string prop;
  kinesis_firehose_config :
    storage_config__kinesis_firehose_config list;
  kinesis_stream_config : storage_config__kinesis_stream_config list;
  kinesis_video_stream_config :
    storage_config__kinesis_video_stream_config list;
  s3_config : storage_config__s3_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config) -> ()

let yojson_of_storage_config =
  (function
   | {
       storage_type = v_storage_type;
       kinesis_firehose_config = v_kinesis_firehose_config;
       kinesis_stream_config = v_kinesis_stream_config;
       kinesis_video_stream_config = v_kinesis_video_stream_config;
       s3_config = v_s3_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_config__s3_config
             v_s3_config
         in
         ("s3_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_config__kinesis_video_stream_config
             v_kinesis_video_stream_config
         in
         ("kinesis_video_stream_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_config__kinesis_stream_config
             v_kinesis_stream_config
         in
         ("kinesis_stream_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_config__kinesis_firehose_config
             v_kinesis_firehose_config
         in
         ("kinesis_firehose_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       `Assoc bnds
    : storage_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config

[@@@deriving.end]

type aws_connect_instance_storage_config = {
  id : string prop option; [@option]
  instance_id : string prop;
  resource_type : string prop;
  storage_config : storage_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_instance_storage_config) -> ()

let yojson_of_aws_connect_instance_storage_config =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       resource_type = v_resource_type;
       storage_config = v_storage_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_config v_storage_config
         in
         ("storage_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_instance_storage_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_instance_storage_config

[@@@deriving.end]

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

let storage_config__s3_config ?(encryption_config = []) ~bucket_name
    ~bucket_prefix () : storage_config__s3_config =
  { bucket_name; bucket_prefix; encryption_config }

let storage_config ?(kinesis_firehose_config = [])
    ?(kinesis_stream_config = []) ?(kinesis_video_stream_config = [])
    ?(s3_config = []) ~storage_type () : storage_config =
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
