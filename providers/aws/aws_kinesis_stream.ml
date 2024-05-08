(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type stream_mode_details = { stream_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_mode_details) -> ()

let yojson_of_stream_mode_details =
  (function
   | { stream_mode = v_stream_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_mode in
         ("stream_mode", arg) :: bnds
       in
       `Assoc bnds
    : stream_mode_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_mode_details

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_kinesis_stream = {
  arn : string prop option; [@option]
  encryption_type : string prop option; [@option]
  enforce_consumer_deletion : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop;
  retention_period : float prop option; [@option]
  shard_count : float prop option; [@option]
  shard_level_metrics : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  stream_mode_details : stream_mode_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_stream) -> ()

let yojson_of_aws_kinesis_stream =
  (function
   | {
       arn = v_arn;
       encryption_type = v_encryption_type;
       enforce_consumer_deletion = v_enforce_consumer_deletion;
       id = v_id;
       kms_key_id = v_kms_key_id;
       name = v_name;
       retention_period = v_retention_period;
       shard_count = v_shard_count;
       shard_level_metrics = v_shard_level_metrics;
       tags = v_tags;
       tags_all = v_tags_all;
       stream_mode_details = v_stream_mode_details;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stream_mode_details then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stream_mode_details)
               v_stream_mode_details
           in
           let bnd = "stream_mode_details", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shard_level_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "shard_level_metrics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shard_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shard_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
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
         match v_enforce_consumer_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_consumer_deletion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kinesis_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_stream

[@@@deriving.end]

let stream_mode_details ~stream_mode () : stream_mode_details =
  { stream_mode }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesis_stream ?arn ?encryption_type
    ?enforce_consumer_deletion ?id ?kms_key_id ?retention_period
    ?shard_count ?shard_level_metrics ?tags ?tags_all
    ?(stream_mode_details = []) ?timeouts ~name () :
    aws_kinesis_stream =
  {
    arn;
    encryption_type;
    enforce_consumer_deletion;
    id;
    kms_key_id;
    name;
    retention_period;
    shard_count;
    shard_level_metrics;
    tags;
    tags_all;
    stream_mode_details;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  encryption_type : string prop;
  enforce_consumer_deletion : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  retention_period : float prop;
  shard_count : float prop;
  shard_level_metrics : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?arn ?encryption_type ?enforce_consumer_deletion ?id
    ?kms_key_id ?retention_period ?shard_count ?shard_level_metrics
    ?tags ?tags_all ?(stream_mode_details = []) ?timeouts ~name __id
    =
  let __type = "aws_kinesis_stream" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       encryption_type = Prop.computed __type __id "encryption_type";
       enforce_consumer_deletion =
         Prop.computed __type __id "enforce_consumer_deletion";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       retention_period =
         Prop.computed __type __id "retention_period";
       shard_count = Prop.computed __type __id "shard_count";
       shard_level_metrics =
         Prop.computed __type __id "shard_level_metrics";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_stream
        (aws_kinesis_stream ?arn ?encryption_type
           ?enforce_consumer_deletion ?id ?kms_key_id
           ?retention_period ?shard_count ?shard_level_metrics ?tags
           ?tags_all ~stream_mode_details ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?encryption_type
    ?enforce_consumer_deletion ?id ?kms_key_id ?retention_period
    ?shard_count ?shard_level_metrics ?tags ?tags_all
    ?(stream_mode_details = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?encryption_type ?enforce_consumer_deletion ?id
      ?kms_key_id ?retention_period ?shard_count ?shard_level_metrics
      ?tags ?tags_all ~stream_mode_details ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
