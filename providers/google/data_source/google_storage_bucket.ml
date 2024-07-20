(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoclass = {
  enabled : bool prop;
  terminal_storage_class : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_terminal_storage_class
         in
         ("terminal_storage_class", arg) :: bnds
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
  max_age_seconds : float prop;
  method_ : string prop list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "method"]
  origin : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response_header : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_response_header then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_response_header
           in
           let bnd = "response_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_origin
           in
           let bnd = "origin", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_method_ then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_method_
           in
           let bnd = "method", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_age_seconds
         in
         ("max_age_seconds", arg) :: bnds
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

type lifecycle_rule__condition = {
  age : float prop;
  created_before : string prop;
  custom_time_before : string prop;
  days_since_custom_time : float prop;
  days_since_noncurrent_time : float prop;
  matches_prefix : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  matches_storage_class : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  matches_suffix : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  no_age : bool prop;
  noncurrent_time_before : string prop;
  num_newer_versions : float prop;
  send_days_since_custom_time_if_zero : bool prop;
  send_days_since_noncurrent_time_if_zero : bool prop;
  send_num_newer_versions_if_zero : bool prop;
  with_state : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_with_state in
         ("with_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_send_num_newer_versions_if_zero
         in
         ("send_num_newer_versions_if_zero", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_send_days_since_noncurrent_time_if_zero
         in
         ("send_days_since_noncurrent_time_if_zero", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_send_days_since_custom_time_if_zero
         in
         ("send_days_since_custom_time_if_zero", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_num_newer_versions
         in
         ("num_newer_versions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_noncurrent_time_before
         in
         ("noncurrent_time_before", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_no_age in
         ("no_age", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_matches_suffix then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_matches_suffix
           in
           let bnd = "matches_suffix", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_matches_storage_class then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_matches_storage_class
           in
           let bnd = "matches_storage_class", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_matches_prefix then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_matches_prefix
           in
           let bnd = "matches_prefix", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_days_since_noncurrent_time
         in
         ("days_since_noncurrent_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_days_since_custom_time
         in
         ("days_since_custom_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_time_before
         in
         ("custom_time_before", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_created_before
         in
         ("created_before", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_age in
         ("age", arg) :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__condition

[@@@deriving.end]

type lifecycle_rule__action = {
  storage_class : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__action

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
  log_object_prefix : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_log_object_prefix
         in
         ("log_object_prefix", arg) :: bnds
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
  is_locked : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_is_locked in
         ("is_locked", arg) :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

[@@@deriving.end]

type soft_delete_policy = {
  effective_time : string prop;
  retention_duration_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : soft_delete_policy) -> ()

let yojson_of_soft_delete_policy =
  (function
   | {
       effective_time = v_effective_time;
       retention_duration_seconds = v_retention_duration_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_retention_duration_seconds
         in
         ("retention_duration_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_effective_time
         in
         ("effective_time", arg) :: bnds
       in
       `Assoc bnds
    : soft_delete_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_soft_delete_policy

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
  main_page_suffix : string prop;
  not_found_page : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_not_found_page
         in
         ("not_found_page", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_main_page_suffix
         in
         ("main_page_suffix", arg) :: bnds
       in
       `Assoc bnds
    : website -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_website

[@@@deriving.end]

type google_storage_bucket = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket) -> ()

let yojson_of_google_storage_bucket =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket

[@@@deriving.end]

let google_storage_bucket ?id ?project ~name () :
    google_storage_bucket =
  { id; name; project }

type t = {
  tf_name : string;
  autoclass : autoclass list prop;
  cors : cors list prop;
  custom_placement_config : custom_placement_config list prop;
  default_event_based_hold : bool prop;
  effective_labels : (string * string) list prop;
  enable_object_retention : bool prop;
  encryption : encryption list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  lifecycle_rule : lifecycle_rule list prop;
  location : string prop;
  logging : logging list prop;
  name : string prop;
  project : string prop;
  project_number : float prop;
  public_access_prevention : string prop;
  requester_pays : bool prop;
  retention_policy : retention_policy list prop;
  rpo : string prop;
  self_link : string prop;
  soft_delete_policy : soft_delete_policy list prop;
  storage_class : string prop;
  terraform_labels : (string * string) list prop;
  uniform_bucket_level_access : bool prop;
  url : string prop;
  versioning : versioning list prop;
  website : website list prop;
}

let make ?id ?project ~name __id =
  let __type = "google_storage_bucket" in
  let __attrs =
    ({
       tf_name = __id;
       autoclass = Prop.computed __type __id "autoclass";
       cors = Prop.computed __type __id "cors";
       custom_placement_config =
         Prop.computed __type __id "custom_placement_config";
       default_event_based_hold =
         Prop.computed __type __id "default_event_based_hold";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_object_retention =
         Prop.computed __type __id "enable_object_retention";
       encryption = Prop.computed __type __id "encryption";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       lifecycle_rule = Prop.computed __type __id "lifecycle_rule";
       location = Prop.computed __type __id "location";
       logging = Prop.computed __type __id "logging";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       project_number = Prop.computed __type __id "project_number";
       public_access_prevention =
         Prop.computed __type __id "public_access_prevention";
       requester_pays = Prop.computed __type __id "requester_pays";
       retention_policy =
         Prop.computed __type __id "retention_policy";
       rpo = Prop.computed __type __id "rpo";
       self_link = Prop.computed __type __id "self_link";
       soft_delete_policy =
         Prop.computed __type __id "soft_delete_policy";
       storage_class = Prop.computed __type __id "storage_class";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uniform_bucket_level_access =
         Prop.computed __type __id "uniform_bucket_level_access";
       url = Prop.computed __type __id "url";
       versioning = Prop.computed __type __id "versioning";
       website = Prop.computed __type __id "website";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket
        (google_storage_bucket ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
