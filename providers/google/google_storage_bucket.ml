(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoclass = {
  enabled : bool prop;
  terminal_storage_class : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoclass) -> ()

let yojson_of_autoclass =
  (function
   | {
       enabled = v_enabled;
       terminal_storage_class = v_terminal_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_terminal_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "terminal_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : autoclass -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoclass

[@@@deriving.end]

type cors = {
  max_age_seconds : float prop option; [@option]
  method_ : string prop list option; [@option] [@key "method"]
  origin : string prop list option; [@option]
  response_header : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors) -> ()

let yojson_of_cors =
  (function
   | {
       max_age_seconds = v_max_age_seconds;
       method_ = v_method_;
       origin = v_origin;
       response_header = v_response_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "origin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

[@@@deriving.end]

type custom_placement_config = {
  data_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_placement_config) -> ()

let yojson_of_custom_placement_config =
  (function
   | { data_locations = v_data_locations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_data_locations
           in
           let bnd = "data_locations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : custom_placement_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_placement_config

[@@@deriving.end]

type encryption = { default_kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | { default_kms_key_name = v_default_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_kms_key_name
         in
         ("default_kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type lifecycle_rule__action = {
  storage_class : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__action) -> ()

let yojson_of_lifecycle_rule__action =
  (function
   | { storage_class = v_storage_class; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__action

[@@@deriving.end]

type lifecycle_rule__condition = {
  age : float prop option; [@option]
  created_before : string prop option; [@option]
  custom_time_before : string prop option; [@option]
  days_since_custom_time : float prop option; [@option]
  days_since_noncurrent_time : float prop option; [@option]
  matches_prefix : string prop list option; [@option]
  matches_storage_class : string prop list option; [@option]
  matches_suffix : string prop list option; [@option]
  no_age : bool prop option; [@option]
  noncurrent_time_before : string prop option; [@option]
  num_newer_versions : float prop option; [@option]
  send_days_since_custom_time_if_zero : bool prop option; [@option]
  send_days_since_noncurrent_time_if_zero : bool prop option;
      [@option]
  send_num_newer_versions_if_zero : bool prop option; [@option]
  with_state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__condition) -> ()

let yojson_of_lifecycle_rule__condition =
  (function
   | {
       age = v_age;
       created_before = v_created_before;
       custom_time_before = v_custom_time_before;
       days_since_custom_time = v_days_since_custom_time;
       days_since_noncurrent_time = v_days_since_noncurrent_time;
       matches_prefix = v_matches_prefix;
       matches_storage_class = v_matches_storage_class;
       matches_suffix = v_matches_suffix;
       no_age = v_no_age;
       noncurrent_time_before = v_noncurrent_time_before;
       num_newer_versions = v_num_newer_versions;
       send_days_since_custom_time_if_zero =
         v_send_days_since_custom_time_if_zero;
       send_days_since_noncurrent_time_if_zero =
         v_send_days_since_noncurrent_time_if_zero;
       send_num_newer_versions_if_zero =
         v_send_num_newer_versions_if_zero;
       with_state = v_with_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_num_newer_versions_if_zero with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_num_newer_versions_if_zero", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_days_since_noncurrent_time_if_zero with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "send_days_since_noncurrent_time_if_zero", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_send_days_since_custom_time_if_zero with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_days_since_custom_time_if_zero", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_newer_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_newer_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_noncurrent_time_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "noncurrent_time_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_matches_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "matches_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_matches_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "matches_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_matches_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "matches_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_since_noncurrent_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days_since_noncurrent_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_since_custom_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days_since_custom_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_time_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_time_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_created_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "created_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "age", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__condition

[@@@deriving.end]

type lifecycle_rule = {
  action : lifecycle_rule__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  condition : lifecycle_rule__condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule) -> ()

let yojson_of_lifecycle_rule =
  (function
   | { action = v_action; condition = v_condition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_rule__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_rule__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule

[@@@deriving.end]

type logging = {
  log_bucket : string prop;
  log_object_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging) -> ()

let yojson_of_logging =
  (function
   | {
       log_bucket = v_log_bucket;
       log_object_prefix = v_log_object_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_object_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_object_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_bucket in
         ("log_bucket", arg) :: bnds
       in
       `Assoc bnds
    : logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging

[@@@deriving.end]

type retention_policy = {
  is_locked : bool prop option; [@option]
  retention_period : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | {
       is_locked = v_is_locked;
       retention_period = v_retention_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period
         in
         ("retention_period", arg) :: bnds
       in
       let bnds =
         match v_is_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_locked", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

[@@@deriving.end]

type soft_delete_policy = {
  retention_duration_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : soft_delete_policy) -> ()

let yojson_of_soft_delete_policy =
  (function
   | { retention_duration_seconds = v_retention_duration_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_duration_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : soft_delete_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_soft_delete_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; read = v_read; update = v_update } ->
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

type versioning = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : versioning) -> ()

let yojson_of_versioning =
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
    : versioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_versioning

[@@@deriving.end]

type website = {
  main_page_suffix : string prop option; [@option]
  not_found_page : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : website) -> ()

let yojson_of_website =
  (function
   | {
       main_page_suffix = v_main_page_suffix;
       not_found_page = v_not_found_page;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_found_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "not_found_page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_main_page_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_page_suffix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : website -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_website

[@@@deriving.end]

type google_storage_bucket = {
  default_event_based_hold : bool prop option; [@option]
  enable_object_retention : bool prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  public_access_prevention : string prop option; [@option]
  requester_pays : bool prop option; [@option]
  rpo : string prop option; [@option]
  storage_class : string prop option; [@option]
  uniform_bucket_level_access : bool prop option; [@option]
  autoclass : autoclass list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors : cors list; [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_placement_config : custom_placement_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption : encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lifecycle_rule : lifecycle_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logging : logging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention_policy : retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  soft_delete_policy : soft_delete_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  versioning : versioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  website : website list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket) -> ()

let yojson_of_google_storage_bucket =
  (function
   | {
       default_event_based_hold = v_default_event_based_hold;
       enable_object_retention = v_enable_object_retention;
       force_destroy = v_force_destroy;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       public_access_prevention = v_public_access_prevention;
       requester_pays = v_requester_pays;
       rpo = v_rpo;
       storage_class = v_storage_class;
       uniform_bucket_level_access = v_uniform_bucket_level_access;
       autoclass = v_autoclass;
       cors = v_cors;
       custom_placement_config = v_custom_placement_config;
       encryption = v_encryption;
       lifecycle_rule = v_lifecycle_rule;
       logging = v_logging;
       retention_policy = v_retention_policy;
       soft_delete_policy = v_soft_delete_policy;
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
         if Stdlib.( = ) [] v_soft_delete_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_soft_delete_policy)
               v_soft_delete_policy
           in
           let bnd = "soft_delete_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
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
         if Stdlib.( = ) [] v_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption) v_encryption
           in
           let bnd = "encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_placement_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_placement_config)
               v_custom_placement_config
           in
           let bnd = "custom_placement_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg = (yojson_of_list yojson_of_cors) v_cors in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoclass then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoclass) v_autoclass
           in
           let bnd = "autoclass", arg in
           bnd :: bnds
       in
       let bnds =
         match v_uniform_bucket_level_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "uniform_bucket_level_access", arg in
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
         match v_rpo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rpo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requester_pays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requester_pays", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_access_prevention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_access_prevention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_enable_object_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_object_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_event_based_hold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_event_based_hold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket

[@@@deriving.end]

let autoclass ?terminal_storage_class ~enabled () : autoclass =
  { enabled; terminal_storage_class }

let cors ?max_age_seconds ?method_ ?origin ?response_header () : cors
    =
  { max_age_seconds; method_; origin; response_header }

let custom_placement_config ~data_locations () :
    custom_placement_config =
  { data_locations }

let encryption ~default_kms_key_name () : encryption =
  { default_kms_key_name }

let lifecycle_rule__action ?storage_class ~type_ () :
    lifecycle_rule__action =
  { storage_class; type_ }

let lifecycle_rule__condition ?age ?created_before
    ?custom_time_before ?days_since_custom_time
    ?days_since_noncurrent_time ?matches_prefix
    ?matches_storage_class ?matches_suffix ?no_age
    ?noncurrent_time_before ?num_newer_versions
    ?send_days_since_custom_time_if_zero
    ?send_days_since_noncurrent_time_if_zero
    ?send_num_newer_versions_if_zero ?with_state () :
    lifecycle_rule__condition =
  {
    age;
    created_before;
    custom_time_before;
    days_since_custom_time;
    days_since_noncurrent_time;
    matches_prefix;
    matches_storage_class;
    matches_suffix;
    no_age;
    noncurrent_time_before;
    num_newer_versions;
    send_days_since_custom_time_if_zero;
    send_days_since_noncurrent_time_if_zero;
    send_num_newer_versions_if_zero;
    with_state;
  }

let lifecycle_rule ~action ~condition () : lifecycle_rule =
  { action; condition }

let logging ?log_object_prefix ~log_bucket () : logging =
  { log_bucket; log_object_prefix }

let retention_policy ?is_locked ~retention_period () :
    retention_policy =
  { is_locked; retention_period }

let soft_delete_policy ?retention_duration_seconds () :
    soft_delete_policy =
  { retention_duration_seconds }

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let versioning ~enabled () : versioning = { enabled }

let website ?main_page_suffix ?not_found_page () : website =
  { main_page_suffix; not_found_page }

let google_storage_bucket ?default_event_based_hold
    ?enable_object_retention ?force_destroy ?id ?labels ?project
    ?public_access_prevention ?requester_pays ?rpo ?storage_class
    ?uniform_bucket_level_access ?(autoclass = []) ?(cors = [])
    ?(custom_placement_config = []) ?(encryption = [])
    ?(lifecycle_rule = []) ?(logging = []) ?(retention_policy = [])
    ?(soft_delete_policy = []) ?timeouts ?(versioning = [])
    ?(website = []) ~location ~name () : google_storage_bucket =
  {
    default_event_based_hold;
    enable_object_retention;
    force_destroy;
    id;
    labels;
    location;
    name;
    project;
    public_access_prevention;
    requester_pays;
    rpo;
    storage_class;
    uniform_bucket_level_access;
    autoclass;
    cors;
    custom_placement_config;
    encryption;
    lifecycle_rule;
    logging;
    retention_policy;
    soft_delete_policy;
    timeouts;
    versioning;
    website;
  }

type t = {
  tf_name : string;
  default_event_based_hold : bool prop;
  effective_labels : (string * string) list prop;
  enable_object_retention : bool prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  project_number : float prop;
  public_access_prevention : string prop;
  requester_pays : bool prop;
  rpo : string prop;
  self_link : string prop;
  storage_class : string prop;
  terraform_labels : (string * string) list prop;
  uniform_bucket_level_access : bool prop;
  url : string prop;
}

let make ?default_event_based_hold ?enable_object_retention
    ?force_destroy ?id ?labels ?project ?public_access_prevention
    ?requester_pays ?rpo ?storage_class ?uniform_bucket_level_access
    ?(autoclass = []) ?(cors = []) ?(custom_placement_config = [])
    ?(encryption = []) ?(lifecycle_rule = []) ?(logging = [])
    ?(retention_policy = []) ?(soft_delete_policy = []) ?timeouts
    ?(versioning = []) ?(website = []) ~location ~name __id =
  let __type = "google_storage_bucket" in
  let __attrs =
    ({
       tf_name = __id;
       default_event_based_hold =
         Prop.computed __type __id "default_event_based_hold";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_object_retention =
         Prop.computed __type __id "enable_object_retention";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       project_number = Prop.computed __type __id "project_number";
       public_access_prevention =
         Prop.computed __type __id "public_access_prevention";
       requester_pays = Prop.computed __type __id "requester_pays";
       rpo = Prop.computed __type __id "rpo";
       self_link = Prop.computed __type __id "self_link";
       storage_class = Prop.computed __type __id "storage_class";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uniform_bucket_level_access =
         Prop.computed __type __id "uniform_bucket_level_access";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket
        (google_storage_bucket ?default_event_based_hold
           ?enable_object_retention ?force_destroy ?id ?labels
           ?project ?public_access_prevention ?requester_pays ?rpo
           ?storage_class ?uniform_bucket_level_access ~autoclass
           ~cors ~custom_placement_config ~encryption ~lifecycle_rule
           ~logging ~retention_policy ~soft_delete_policy ?timeouts
           ~versioning ~website ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_event_based_hold
    ?enable_object_retention ?force_destroy ?id ?labels ?project
    ?public_access_prevention ?requester_pays ?rpo ?storage_class
    ?uniform_bucket_level_access ?(autoclass = []) ?(cors = [])
    ?(custom_placement_config = []) ?(encryption = [])
    ?(lifecycle_rule = []) ?(logging = []) ?(retention_policy = [])
    ?(soft_delete_policy = []) ?timeouts ?(versioning = [])
    ?(website = []) ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_event_based_hold ?enable_object_retention
      ?force_destroy ?id ?labels ?project ?public_access_prevention
      ?requester_pays ?rpo ?storage_class
      ?uniform_bucket_level_access ~autoclass ~cors
      ~custom_placement_config ~encryption ~lifecycle_rule ~logging
      ~retention_policy ~soft_delete_policy ?timeouts ~versioning
      ~website ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
