(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_serverless_cache__cache_usage_limits__data_storage = {
  maximum : float;  (** maximum *)
  unit : string;  (** unit *)
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache__cache_usage_limits__data_storage *)

type aws_elasticache_serverless_cache__cache_usage_limits__ecpu_per_second = {
  maximum : float;  (** maximum *)
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache__cache_usage_limits__ecpu_per_second *)

type aws_elasticache_serverless_cache__cache_usage_limits = {
  data_storage :
    aws_elasticache_serverless_cache__cache_usage_limits__data_storage
    list;
  ecpu_per_second :
    aws_elasticache_serverless_cache__cache_usage_limits__ecpu_per_second
    list;
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache__cache_usage_limits *)

type aws_elasticache_serverless_cache__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache__timeouts *)

type aws_elasticache_serverless_cache__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_serverless_cache__reader_endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_serverless_cache = {
  engine : string;  (** engine *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  snapshot_arns_to_restore : string list option; [@option]
      (** snapshot_arns_to_restore *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_group_id : string option; [@option]  (** user_group_id *)
  cache_usage_limits :
    aws_elasticache_serverless_cache__cache_usage_limits list;
  timeouts : aws_elasticache_serverless_cache__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_serverless_cache *)

let aws_elasticache_serverless_cache ?kms_key_id
    ?snapshot_arns_to_restore ?tags ?user_group_id ?timeouts ~engine
    ~name ~cache_usage_limits __resource_id =
  let __resource_type = "aws_elasticache_serverless_cache" in
  let __resource =
    {
      engine;
      kms_key_id;
      name;
      snapshot_arns_to_restore;
      tags;
      user_group_id;
      cache_usage_limits;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_serverless_cache __resource);
  ()
