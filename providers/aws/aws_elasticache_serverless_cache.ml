(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cache_usage_limits__data_storage = {
  maximum : float prop;  (** maximum *)
  unit : string prop;  (** unit *)
}
[@@deriving yojson_of]
(** cache_usage_limits__data_storage *)

type cache_usage_limits__ecpu_per_second = {
  maximum : float prop;  (** maximum *)
}
[@@deriving yojson_of]
(** cache_usage_limits__ecpu_per_second *)

type cache_usage_limits = {
  data_storage : cache_usage_limits__data_storage list;
  ecpu_per_second : cache_usage_limits__ecpu_per_second list;
}
[@@deriving yojson_of]
(** cache_usage_limits *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type reader_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_serverless_cache = {
  daily_snapshot_time : string prop option; [@option]
      (** daily_snapshot_time *)
  description : string prop option; [@option]  (** description *)
  engine : string prop;  (** engine *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  major_engine_version : string prop option; [@option]
      (** major_engine_version *)
  name : string prop;  (** name *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  snapshot_arns_to_restore : string prop list option; [@option]
      (** snapshot_arns_to_restore *)
  snapshot_retention_limit : float prop option; [@option]
      (** snapshot_retention_limit *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_group_id : string prop option; [@option]  (** user_group_id *)
  cache_usage_limits : cache_usage_limits list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache *)

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

let register ?tf_module ?daily_snapshot_time ?description ?kms_key_id
    ?major_engine_version ?security_group_ids
    ?snapshot_arns_to_restore ?snapshot_retention_limit ?subnet_ids
    ?tags ?user_group_id ?timeouts ~engine ~name ~cache_usage_limits
    __resource_id =
  let __resource_type = "aws_elasticache_serverless_cache" in
  let __resource =
    aws_elasticache_serverless_cache ?daily_snapshot_time
      ?description ?kms_key_id ?major_engine_version
      ?security_group_ids ?snapshot_arns_to_restore
      ?snapshot_retention_limit ?subnet_ids ?tags ?user_group_id
      ?timeouts ~engine ~name ~cache_usage_limits ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_serverless_cache __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       daily_snapshot_time =
         Prop.computed __resource_type __resource_id
           "daily_snapshot_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine = Prop.computed __resource_type __resource_id "engine";
       full_engine_version =
         Prop.computed __resource_type __resource_id
           "full_engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       major_engine_version =
         Prop.computed __resource_type __resource_id
           "major_engine_version";
       name = Prop.computed __resource_type __resource_id "name";
       reader_endpoint =
         Prop.computed __resource_type __resource_id
           "reader_endpoint";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       snapshot_arns_to_restore =
         Prop.computed __resource_type __resource_id
           "snapshot_arns_to_restore";
       snapshot_retention_limit =
         Prop.computed __resource_type __resource_id
           "snapshot_retention_limit";
       status = Prop.computed __resource_type __resource_id "status";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_group_id =
         Prop.computed __resource_type __resource_id "user_group_id";
     }
      : t)
  in
  __resource_attributes
