(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_config__s3_config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
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
  encryption_config :
    storage_config__kinesis_video_stream_config__encryption_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix : string prop;
  retention_period_hours : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config__kinesis_video_stream_config) -> ()

let yojson_of_storage_config__kinesis_video_stream_config =
  (function
   | {
       encryption_config = v_encryption_config;
       prefix = v_prefix;
       retention_period_hours = v_retention_period_hours;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_config__kinesis_video_stream_config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_config__kinesis_video_stream_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config__kinesis_video_stream_config

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

type storage_config = {
  kinesis_firehose_config :
    storage_config__kinesis_firehose_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_stream_config : storage_config__kinesis_stream_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_video_stream_config :
    storage_config__kinesis_video_stream_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_config : storage_config__s3_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config) -> ()

let yojson_of_storage_config =
  (function
   | {
       kinesis_firehose_config = v_kinesis_firehose_config;
       kinesis_stream_config = v_kinesis_stream_config;
       kinesis_video_stream_config = v_kinesis_video_stream_config;
       s3_config = v_s3_config;
       storage_type = v_storage_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_config__s3_config)
               v_s3_config
           in
           let bnd = "s3_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_video_stream_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_config__kinesis_video_stream_config)
               v_kinesis_video_stream_config
           in
           let bnd = "kinesis_video_stream_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_stream_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_config__kinesis_stream_config)
               v_kinesis_stream_config
           in
           let bnd = "kinesis_stream_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_firehose_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_config__kinesis_firehose_config)
               v_kinesis_firehose_config
           in
           let bnd = "kinesis_firehose_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config

[@@@deriving.end]

type aws_connect_instance_storage_config = {
  association_id : string prop;
  id : string prop option; [@option]
  instance_id : string prop;
  resource_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_instance_storage_config) -> ()

let yojson_of_aws_connect_instance_storage_config =
  (function
   | {
       association_id = v_association_id;
       id = v_id;
       instance_id = v_instance_id;
       resource_type = v_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_association_id
         in
         ("association_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_connect_instance_storage_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_instance_storage_config

[@@@deriving.end]

let aws_connect_instance_storage_config ?id ~association_id
    ~instance_id ~resource_type () :
    aws_connect_instance_storage_config =
  { association_id; id; instance_id; resource_type }

type t = {
  tf_name : string;
  association_id : string prop;
  id : string prop;
  instance_id : string prop;
  resource_type : string prop;
  storage_config : storage_config list prop;
}

let make ?id ~association_id ~instance_id ~resource_type __id =
  let __type = "aws_connect_instance_storage_config" in
  let __attrs =
    ({
       tf_name = __id;
       association_id = Prop.computed __type __id "association_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       resource_type = Prop.computed __type __id "resource_type";
       storage_config = Prop.computed __type __id "storage_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_instance_storage_config
        (aws_connect_instance_storage_config ?id ~association_id
           ~instance_id ~resource_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~association_id ~instance_id
    ~resource_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ~association_id ~instance_id ~resource_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
