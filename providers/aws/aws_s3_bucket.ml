(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list option; [@option]
  max_age_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_rule) -> ()

let yojson_of_cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       expose_headers = v_expose_headers;
       max_age_seconds = v_max_age_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_rule

[@@@deriving.end]

type grant = {
  id : string prop option; [@option]
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : grant) -> ()

let yojson_of_grant =
  (function
   | {
       id = v_id;
       permissions = v_permissions;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permissions
           in
           let bnd = "permissions", arg in
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
       `Assoc bnds
    : grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grant

[@@@deriving.end]

type lifecycle_rule__expiration = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  expired_object_delete_marker : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__expiration) -> ()

let yojson_of_lifecycle_rule__expiration =
  (function
   | {
       date = v_date;
       days = v_days;
       expired_object_delete_marker = v_expired_object_delete_marker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expired_object_delete_marker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expired_object_delete_marker", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__expiration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__expiration

[@@@deriving.end]

type lifecycle_rule__noncurrent_version_expiration = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__noncurrent_version_expiration) -> ()

let yojson_of_lifecycle_rule__noncurrent_version_expiration =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__noncurrent_version_expiration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__noncurrent_version_expiration

[@@@deriving.end]

type lifecycle_rule__noncurrent_version_transition = {
  days : float prop option; [@option]
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__noncurrent_version_transition) -> ()

let yojson_of_lifecycle_rule__noncurrent_version_transition =
  (function
   | { days = v_days; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__noncurrent_version_transition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__noncurrent_version_transition

[@@@deriving.end]

type lifecycle_rule__transition = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__transition) -> ()

let yojson_of_lifecycle_rule__transition =
  (function
   | {
       date = v_date;
       days = v_days;
       storage_class = v_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__transition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__transition

[@@@deriving.end]

type lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  expiration : lifecycle_rule__expiration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  noncurrent_version_expiration :
    lifecycle_rule__noncurrent_version_expiration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  noncurrent_version_transition :
    lifecycle_rule__noncurrent_version_transition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transition : lifecycle_rule__transition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule) -> ()

let yojson_of_lifecycle_rule =
  (function
   | {
       abort_incomplete_multipart_upload_days =
         v_abort_incomplete_multipart_upload_days;
       enabled = v_enabled;
       id = v_id;
       prefix = v_prefix;
       tags = v_tags;
       expiration = v_expiration;
       noncurrent_version_expiration =
         v_noncurrent_version_expiration;
       noncurrent_version_transition =
         v_noncurrent_version_transition;
       transition = v_transition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_transition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_rule__transition)
               v_transition
           in
           let bnd = "transition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_noncurrent_version_transition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lifecycle_rule__noncurrent_version_transition)
               v_noncurrent_version_transition
           in
           let bnd = "noncurrent_version_transition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_noncurrent_version_expiration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lifecycle_rule__noncurrent_version_expiration)
               v_noncurrent_version_expiration
           in
           let bnd = "noncurrent_version_expiration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expiration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_rule__expiration)
               v_expiration
           in
           let bnd = "expiration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_abort_incomplete_multipart_upload_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "abort_incomplete_multipart_upload_days", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule

[@@@deriving.end]

type logging = {
  target_bucket : string prop;
  target_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging) -> ()

let yojson_of_logging =
  (function
   | {
       target_bucket = v_target_bucket;
       target_prefix = v_target_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_bucket in
         ("target_bucket", arg) :: bnds
       in
       `Assoc bnds
    : logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging

[@@@deriving.end]

type object_lock_configuration__rule__default_retention = {
  days : float prop option; [@option]
  mode : string prop;
  years : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : object_lock_configuration__rule__default_retention) -> ()

let yojson_of_object_lock_configuration__rule__default_retention =
  (function
   | { days = v_days; mode = v_mode; years = v_years } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_years with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "years", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : object_lock_configuration__rule__default_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_lock_configuration__rule__default_retention

[@@@deriving.end]

type object_lock_configuration__rule = {
  default_retention :
    object_lock_configuration__rule__default_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : object_lock_configuration__rule) -> ()

let yojson_of_object_lock_configuration__rule =
  (function
   | { default_retention = v_default_retention } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_default_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_object_lock_configuration__rule__default_retention)
               v_default_retention
           in
           let bnd = "default_retention", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : object_lock_configuration__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_lock_configuration__rule

[@@@deriving.end]

type object_lock_configuration = {
  object_lock_enabled : string prop option; [@option]
  rule : object_lock_configuration__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : object_lock_configuration) -> ()

let yojson_of_object_lock_configuration =
  (function
   | { object_lock_enabled = v_object_lock_enabled; rule = v_rule }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_object_lock_configuration__rule)
               v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_object_lock_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_lock_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : object_lock_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_lock_configuration

[@@@deriving.end]

type replication_configuration__rules__destination__access_control_translation = {
  owner : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication_configuration__rules__destination__access_control_translation) ->
  ()

let yojson_of_replication_configuration__rules__destination__access_control_translation
    =
  (function
   | { owner = v_owner } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__destination__access_control_translation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_configuration__rules__destination__access_control_translation

[@@@deriving.end]

type replication_configuration__rules__destination__metrics = {
  minutes : float prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : replication_configuration__rules__destination__metrics) ->
  ()

let yojson_of_replication_configuration__rules__destination__metrics
    =
  (function
   | { minutes = v_minutes; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__destination__metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_configuration__rules__destination__metrics

[@@@deriving.end]

type replication_configuration__rules__destination__replication_time = {
  minutes : float prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication_configuration__rules__destination__replication_time) ->
  ()

let yojson_of_replication_configuration__rules__destination__replication_time
    =
  (function
   | { minutes = v_minutes; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__destination__replication_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_configuration__rules__destination__replication_time

[@@@deriving.end]

type replication_configuration__rules__destination = {
  account_id : string prop option; [@option]
  bucket : string prop;
  replica_kms_key_id : string prop option; [@option]
  storage_class : string prop option; [@option]
  access_control_translation :
    replication_configuration__rules__destination__access_control_translation
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metrics :
    replication_configuration__rules__destination__metrics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replication_time :
    replication_configuration__rules__destination__replication_time
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration__rules__destination) -> ()

let yojson_of_replication_configuration__rules__destination =
  (function
   | {
       account_id = v_account_id;
       bucket = v_bucket;
       replica_kms_key_id = v_replica_kms_key_id;
       storage_class = v_storage_class;
       access_control_translation = v_access_control_translation;
       metrics = v_metrics;
       replication_time = v_replication_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_replication_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__destination__replication_time)
               v_replication_time
           in
           let bnd = "replication_time", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metrics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__destination__metrics)
               v_metrics
           in
           let bnd = "metrics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_control_translation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__destination__access_control_translation)
               v_access_control_translation
           in
           let bnd = "access_control_translation", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replica_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replica_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rules__destination

[@@@deriving.end]

type replication_configuration__rules__filter = {
  prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration__rules__filter) -> ()

let yojson_of_replication_configuration__rules__filter =
  (function
   | { prefix = v_prefix; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rules__filter

[@@@deriving.end]

type replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects) ->
  ()

let yojson_of_replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects

[@@@deriving.end]

type replication_configuration__rules__source_selection_criteria = {
  sse_kms_encrypted_objects :
    replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication_configuration__rules__source_selection_criteria) ->
  ()

let yojson_of_replication_configuration__rules__source_selection_criteria
    =
  (function
   | { sse_kms_encrypted_objects = v_sse_kms_encrypted_objects } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sse_kms_encrypted_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects)
               v_sse_kms_encrypted_objects
           in
           let bnd = "sse_kms_encrypted_objects", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules__source_selection_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication_configuration__rules__source_selection_criteria

[@@@deriving.end]

type replication_configuration__rules = {
  delete_marker_replication_status : string prop option; [@option]
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop;
  destination : replication_configuration__rules__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : replication_configuration__rules__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_selection_criteria :
    replication_configuration__rules__source_selection_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration__rules) -> ()

let yojson_of_replication_configuration__rules =
  (function
   | {
       delete_marker_replication_status =
         v_delete_marker_replication_status;
       id = v_id;
       prefix = v_prefix;
       priority = v_priority;
       status = v_status;
       destination = v_destination;
       filter = v_filter;
       source_selection_criteria = v_source_selection_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_selection_criteria then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__source_selection_criteria)
               v_source_selection_criteria
           in
           let bnd = "source_selection_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__filter)
               v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         match v_delete_marker_replication_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_marker_replication_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rules

[@@@deriving.end]

type replication_configuration = {
  role : string prop;
  rules : replication_configuration__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration) -> ()

let yojson_of_replication_configuration =
  (function
   | { role = v_role; rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       `Assoc bnds
    : replication_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration

[@@@deriving.end]

type server_side_encryption_configuration__rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
  sse_algorithm : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       server_side_encryption_configuration__rule__apply_server_side_encryption_by_default) ->
  ()

let yojson_of_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    =
  (function
   | {
       kms_master_key_id = v_kms_master_key_id;
       sse_algorithm = v_sse_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sse_algorithm in
         ("sse_algorithm", arg) :: bnds
       in
       let bnds =
         match v_kms_master_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_master_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration__rule__apply_server_side_encryption_by_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default

[@@@deriving.end]

type server_side_encryption_configuration__rule = {
  bucket_key_enabled : bool prop option; [@option]
  apply_server_side_encryption_by_default :
    server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption_configuration__rule) -> ()

let yojson_of_server_side_encryption_configuration__rule =
  (function
   | {
       bucket_key_enabled = v_bucket_key_enabled;
       apply_server_side_encryption_by_default =
         v_apply_server_side_encryption_by_default;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_apply_server_side_encryption_by_default
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default)
               v_apply_server_side_encryption_by_default
           in
           let bnd =
             "apply_server_side_encryption_by_default", arg
           in
           bnd :: bnds
       in
       let bnds =
         match v_bucket_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bucket_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration__rule

[@@@deriving.end]

type server_side_encryption_configuration = {
  rule : server_side_encryption_configuration__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption_configuration) -> ()

let yojson_of_server_side_encryption_configuration =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_server_side_encryption_configuration__rule)
               v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type versioning = {
  enabled : bool prop option; [@option]
  mfa_delete : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : versioning) -> ()

let yojson_of_versioning =
  (function
   | { enabled = v_enabled; mfa_delete = v_mfa_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mfa_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mfa_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : versioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_versioning

[@@@deriving.end]

type website = {
  error_document : string prop option; [@option]
  index_document : string prop option; [@option]
  redirect_all_requests_to : string prop option; [@option]
  routing_rules : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : website) -> ()

let yojson_of_website =
  (function
   | {
       error_document = v_error_document;
       index_document = v_index_document;
       redirect_all_requests_to = v_redirect_all_requests_to;
       routing_rules = v_routing_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_routing_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_all_requests_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_all_requests_to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_document", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : website -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_website

[@@@deriving.end]

type aws_s3_bucket = {
  acceleration_status : string prop option; [@option]
  acl : string prop option; [@option]
  bucket : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  object_lock_enabled : bool prop option; [@option]
  policy : string prop option; [@option]
  request_payer : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  cors_rule : cors_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  grant : grant list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lifecycle_rule : lifecycle_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logging : logging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  object_lock_configuration : object_lock_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replication_configuration : replication_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  versioning : versioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  website : website list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket) -> ()

let yojson_of_aws_s3_bucket =
  (function
   | {
       acceleration_status = v_acceleration_status;
       acl = v_acl;
       bucket = v_bucket;
       bucket_prefix = v_bucket_prefix;
       force_destroy = v_force_destroy;
       id = v_id;
       object_lock_enabled = v_object_lock_enabled;
       policy = v_policy;
       request_payer = v_request_payer;
       tags = v_tags;
       tags_all = v_tags_all;
       cors_rule = v_cors_rule;
       grant = v_grant;
       lifecycle_rule = v_lifecycle_rule;
       logging = v_logging;
       object_lock_configuration = v_object_lock_configuration;
       replication_configuration = v_replication_configuration;
       server_side_encryption_configuration =
         v_server_side_encryption_configuration;
       timeouts = v_timeouts;
       versioning = v_versioning;
       website = v_website;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_website then bnds
         else
           let arg = (yojson_of_list yojson_of_website) v_website in
           let bnd = "website", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_versioning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_versioning) v_versioning
           in
           let bnd = "versioning", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_server_side_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_server_side_encryption_configuration)
               v_server_side_encryption_configuration
           in
           let bnd = "server_side_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replication_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication_configuration)
               v_replication_configuration
           in
           let bnd = "replication_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_object_lock_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_object_lock_configuration)
               v_object_lock_configuration
           in
           let bnd = "object_lock_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging then bnds
         else
           let arg = (yojson_of_list yojson_of_logging) v_logging in
           let bnd = "logging", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lifecycle_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_rule)
               v_lifecycle_rule
           in
           let bnd = "lifecycle_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grant then bnds
         else
           let arg = (yojson_of_list yojson_of_grant) v_grant in
           let bnd = "grant", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cors_rule) v_cors_rule
           in
           let bnd = "cors_rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_payer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_payer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_lock_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "object_lock_enabled", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acceleration_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acceleration_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket

[@@@deriving.end]

let cors_rule ?allowed_headers ?expose_headers ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    max_age_seconds;
  }

let grant ?id ?uri ~permissions ~type_ () : grant =
  { id; permissions; type_; uri }

let lifecycle_rule__expiration ?date ?days
    ?expired_object_delete_marker () : lifecycle_rule__expiration =
  { date; days; expired_object_delete_marker }

let lifecycle_rule__noncurrent_version_expiration ?days () :
    lifecycle_rule__noncurrent_version_expiration =
  { days }

let lifecycle_rule__noncurrent_version_transition ?days
    ~storage_class () : lifecycle_rule__noncurrent_version_transition
    =
  { days; storage_class }

let lifecycle_rule__transition ?date ?days ~storage_class () :
    lifecycle_rule__transition =
  { date; days; storage_class }

let lifecycle_rule ?abort_incomplete_multipart_upload_days ?id
    ?prefix ?tags ?(expiration = [])
    ?(noncurrent_version_expiration = []) ~enabled
    ~noncurrent_version_transition ~transition () : lifecycle_rule =
  {
    abort_incomplete_multipart_upload_days;
    enabled;
    id;
    prefix;
    tags;
    expiration;
    noncurrent_version_expiration;
    noncurrent_version_transition;
    transition;
  }

let logging ?target_prefix ~target_bucket () : logging =
  { target_bucket; target_prefix }

let object_lock_configuration__rule__default_retention ?days ?years
    ~mode () : object_lock_configuration__rule__default_retention =
  { days; mode; years }

let object_lock_configuration__rule ~default_retention () :
    object_lock_configuration__rule =
  { default_retention }

let object_lock_configuration ?object_lock_enabled ?(rule = []) () :
    object_lock_configuration =
  { object_lock_enabled; rule }

let replication_configuration__rules__destination__access_control_translation
    ~owner () :
    replication_configuration__rules__destination__access_control_translation
    =
  { owner }

let replication_configuration__rules__destination__metrics ?minutes
    ?status () :
    replication_configuration__rules__destination__metrics =
  { minutes; status }

let replication_configuration__rules__destination__replication_time
    ?minutes ?status () :
    replication_configuration__rules__destination__replication_time =
  { minutes; status }

let replication_configuration__rules__destination ?account_id
    ?replica_kms_key_id ?storage_class
    ?(access_control_translation = []) ?(metrics = [])
    ?(replication_time = []) ~bucket () :
    replication_configuration__rules__destination =
  {
    account_id;
    bucket;
    replica_kms_key_id;
    storage_class;
    access_control_translation;
    metrics;
    replication_time;
  }

let replication_configuration__rules__filter ?prefix ?tags () :
    replication_configuration__rules__filter =
  { prefix; tags }

let replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    ~enabled () :
    replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    =
  { enabled }

let replication_configuration__rules__source_selection_criteria
    ?(sse_kms_encrypted_objects = []) () :
    replication_configuration__rules__source_selection_criteria =
  { sse_kms_encrypted_objects }

let replication_configuration__rules
    ?delete_marker_replication_status ?id ?prefix ?priority
    ?(filter = []) ?(source_selection_criteria = []) ~status
    ~destination () : replication_configuration__rules =
  {
    delete_marker_replication_status;
    id;
    prefix;
    priority;
    status;
    destination;
    filter;
    source_selection_criteria;
  }

let replication_configuration ~role ~rules () :
    replication_configuration =
  { role; rules }

let server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    ?kms_master_key_id ~sse_algorithm () :
    server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    =
  { kms_master_key_id; sse_algorithm }

let server_side_encryption_configuration__rule ?bucket_key_enabled
    ~apply_server_side_encryption_by_default () :
    server_side_encryption_configuration__rule =
  { bucket_key_enabled; apply_server_side_encryption_by_default }

let server_side_encryption_configuration ~rule () :
    server_side_encryption_configuration =
  { rule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let versioning ?enabled ?mfa_delete () : versioning =
  { enabled; mfa_delete }

let website ?error_document ?index_document ?redirect_all_requests_to
    ?routing_rules () : website =
  {
    error_document;
    index_document;
    redirect_all_requests_to;
    routing_rules;
  }

let aws_s3_bucket ?acceleration_status ?acl ?bucket ?bucket_prefix
    ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
    ?tags ?tags_all ?(cors_rule = []) ?(lifecycle_rule = [])
    ?(logging = []) ?(object_lock_configuration = [])
    ?(replication_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(versioning = []) ?(website = []) ~grant () : aws_s3_bucket =
  {
    acceleration_status;
    acl;
    bucket;
    bucket_prefix;
    force_destroy;
    id;
    object_lock_enabled;
    policy;
    request_payer;
    tags;
    tags_all;
    cors_rule;
    grant;
    lifecycle_rule;
    logging;
    object_lock_configuration;
    replication_configuration;
    server_side_encryption_configuration;
    timeouts;
    versioning;
    website;
  }

type t = {
  tf_name : string;
  acceleration_status : string prop;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_domain_name : string prop;
  bucket_prefix : string prop;
  bucket_regional_domain_name : string prop;
  force_destroy : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  object_lock_enabled : bool prop;
  policy : string prop;
  region : string prop;
  request_payer : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

let make ?acceleration_status ?acl ?bucket ?bucket_prefix
    ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
    ?tags ?tags_all ?(cors_rule = []) ?(lifecycle_rule = [])
    ?(logging = []) ?(object_lock_configuration = [])
    ?(replication_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(versioning = []) ?(website = []) ~grant __id =
  let __type = "aws_s3_bucket" in
  let __attrs =
    ({
       tf_name = __id;
       acceleration_status =
         Prop.computed __type __id "acceleration_status";
       acl = Prop.computed __type __id "acl";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_domain_name =
         Prop.computed __type __id "bucket_domain_name";
       bucket_prefix = Prop.computed __type __id "bucket_prefix";
       bucket_regional_domain_name =
         Prop.computed __type __id "bucket_regional_domain_name";
       force_destroy = Prop.computed __type __id "force_destroy";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       object_lock_enabled =
         Prop.computed __type __id "object_lock_enabled";
       policy = Prop.computed __type __id "policy";
       region = Prop.computed __type __id "region";
       request_payer = Prop.computed __type __id "request_payer";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       website_domain = Prop.computed __type __id "website_domain";
       website_endpoint =
         Prop.computed __type __id "website_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket
        (aws_s3_bucket ?acceleration_status ?acl ?bucket
           ?bucket_prefix ?force_destroy ?id ?object_lock_enabled
           ?policy ?request_payer ?tags ?tags_all ~cors_rule
           ~lifecycle_rule ~logging ~object_lock_configuration
           ~replication_configuration
           ~server_side_encryption_configuration ?timeouts
           ~versioning ~website ~grant ());
    attrs = __attrs;
  }

let register ?tf_module ?acceleration_status ?acl ?bucket
    ?bucket_prefix ?force_destroy ?id ?object_lock_enabled ?policy
    ?request_payer ?tags ?tags_all ?(cors_rule = [])
    ?(lifecycle_rule = []) ?(logging = [])
    ?(object_lock_configuration = [])
    ?(replication_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(versioning = []) ?(website = []) ~grant __id =
  let (r : _ Tf_core.resource) =
    make ?acceleration_status ?acl ?bucket ?bucket_prefix
      ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
      ?tags ?tags_all ~cors_rule ~lifecycle_rule ~logging
      ~object_lock_configuration ~replication_configuration
      ~server_side_encryption_configuration ?timeouts ~versioning
      ~website ~grant __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
