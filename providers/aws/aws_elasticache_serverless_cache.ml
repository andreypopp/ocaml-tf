(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_usage_limits__data_storage = {
  maximum : float prop;
  unit : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_usage_limits__data_storage) -> ()

let yojson_of_cache_usage_limits__data_storage =
  (function
   | { maximum = v_maximum; unit = v_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum in
         ("maximum", arg) :: bnds
       in
       `Assoc bnds
    : cache_usage_limits__data_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_usage_limits__data_storage

[@@@deriving.end]

type cache_usage_limits__ecpu_per_second = { maximum : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_usage_limits__ecpu_per_second) -> ()

let yojson_of_cache_usage_limits__ecpu_per_second =
  (function
   | { maximum = v_maximum } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum in
         ("maximum", arg) :: bnds
       in
       `Assoc bnds
    : cache_usage_limits__ecpu_per_second ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_usage_limits__ecpu_per_second

[@@@deriving.end]

type cache_usage_limits = {
  data_storage : cache_usage_limits__data_storage list;
  ecpu_per_second : cache_usage_limits__ecpu_per_second list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_usage_limits) -> ()

let yojson_of_cache_usage_limits =
  (function
   | {
       data_storage = v_data_storage;
       ecpu_per_second = v_ecpu_per_second;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cache_usage_limits__ecpu_per_second
             v_ecpu_per_second
         in
         ("ecpu_per_second", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cache_usage_limits__data_storage
             v_data_storage
         in
         ("data_storage", arg) :: bnds
       in
       `Assoc bnds
    : cache_usage_limits -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_usage_limits

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

type endpoint = { address : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | { address = v_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type reader_endpoint = { address : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : reader_endpoint) -> ()

let yojson_of_reader_endpoint =
  (function
   | { address = v_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : reader_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reader_endpoint

[@@@deriving.end]

type aws_elasticache_serverless_cache = {
  daily_snapshot_time : string prop option; [@option]
  description : string prop option; [@option]
  engine : string prop;
  kms_key_id : string prop option; [@option]
  major_engine_version : string prop option; [@option]
  name : string prop;
  security_group_ids : string prop list option; [@option]
  snapshot_arns_to_restore : string prop list option; [@option]
  snapshot_retention_limit : float prop option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  user_group_id : string prop option; [@option]
  cache_usage_limits : cache_usage_limits list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_serverless_cache) -> ()

let yojson_of_aws_elasticache_serverless_cache =
  (function
   | {
       daily_snapshot_time = v_daily_snapshot_time;
       description = v_description;
       engine = v_engine;
       kms_key_id = v_kms_key_id;
       major_engine_version = v_major_engine_version;
       name = v_name;
       security_group_ids = v_security_group_ids;
       snapshot_arns_to_restore = v_snapshot_arns_to_restore;
       snapshot_retention_limit = v_snapshot_retention_limit;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       user_group_id = v_user_group_id;
       cache_usage_limits = v_cache_usage_limits;
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
         let arg =
           yojson_of_list yojson_of_cache_usage_limits
             v_cache_usage_limits
         in
         ("cache_usage_limits", arg) :: bnds
       in
       let bnds =
         match v_user_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_group_id", arg in
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_retention_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "snapshot_retention_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_arns_to_restore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "snapshot_arns_to_restore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_major_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "major_engine_version", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_snapshot_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "daily_snapshot_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticache_serverless_cache ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_serverless_cache

[@@@deriving.end]

let cache_usage_limits__data_storage ~maximum ~unit () :
    cache_usage_limits__data_storage =
  { maximum; unit }

let cache_usage_limits__ecpu_per_second ~maximum () :
    cache_usage_limits__ecpu_per_second =
  { maximum }

let cache_usage_limits ~data_storage ~ecpu_per_second () :
    cache_usage_limits =
  { data_storage; ecpu_per_second }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_elasticache_serverless_cache ?daily_snapshot_time
    ?description ?kms_key_id ?major_engine_version
    ?security_group_ids ?snapshot_arns_to_restore
    ?snapshot_retention_limit ?subnet_ids ?tags ?user_group_id
    ?timeouts ~engine ~name ~cache_usage_limits () :
    aws_elasticache_serverless_cache =
  {
    daily_snapshot_time;
    description;
    engine;
    kms_key_id;
    major_engine_version;
    name;
    security_group_ids;
    snapshot_arns_to_restore;
    snapshot_retention_limit;
    subnet_ids;
    tags;
    user_group_id;
    cache_usage_limits;
    timeouts;
  }

type t = {
  arn : string prop;
  create_time : string prop;
  daily_snapshot_time : string prop;
  description : string prop;
  endpoint : endpoint list prop;
  engine : string prop;
  full_engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  major_engine_version : string prop;
  name : string prop;
  reader_endpoint : reader_endpoint list prop;
  security_group_ids : string list prop;
  snapshot_arns_to_restore : string list prop;
  snapshot_retention_limit : float prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
}

let make ?daily_snapshot_time ?description ?kms_key_id
    ?major_engine_version ?security_group_ids
    ?snapshot_arns_to_restore ?snapshot_retention_limit ?subnet_ids
    ?tags ?user_group_id ?timeouts ~engine ~name ~cache_usage_limits
    __id =
  let __type = "aws_elasticache_serverless_cache" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       create_time = Prop.computed __type __id "create_time";
       daily_snapshot_time =
         Prop.computed __type __id "daily_snapshot_time";
       description = Prop.computed __type __id "description";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       full_engine_version =
         Prop.computed __type __id "full_engine_version";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       major_engine_version =
         Prop.computed __type __id "major_engine_version";
       name = Prop.computed __type __id "name";
       reader_endpoint = Prop.computed __type __id "reader_endpoint";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       snapshot_arns_to_restore =
         Prop.computed __type __id "snapshot_arns_to_restore";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       status = Prop.computed __type __id "status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_group_id = Prop.computed __type __id "user_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_serverless_cache
        (aws_elasticache_serverless_cache ?daily_snapshot_time
           ?description ?kms_key_id ?major_engine_version
           ?security_group_ids ?snapshot_arns_to_restore
           ?snapshot_retention_limit ?subnet_ids ?tags ?user_group_id
           ?timeouts ~engine ~name ~cache_usage_limits ());
    attrs = __attrs;
  }

let register ?tf_module ?daily_snapshot_time ?description ?kms_key_id
    ?major_engine_version ?security_group_ids
    ?snapshot_arns_to_restore ?snapshot_retention_limit ?subnet_ids
    ?tags ?user_group_id ?timeouts ~engine ~name ~cache_usage_limits
    __id =
  let (r : _ Tf_core.resource) =
    make ?daily_snapshot_time ?description ?kms_key_id
      ?major_engine_version ?security_group_ids
      ?snapshot_arns_to_restore ?snapshot_retention_limit ?subnet_ids
      ?tags ?user_group_id ?timeouts ~engine ~name
      ~cache_usage_limits __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
