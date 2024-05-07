(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_details__action__cross_region_copy__encryption_configuration = {
  cmk_arn : string prop option; [@option]
  encrypted : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_details__action__cross_region_copy__encryption_configuration) ->
  ()

let yojson_of_policy_details__action__cross_region_copy__encryption_configuration
    =
  (function
   | { cmk_arn = v_cmk_arn; encrypted = v_encrypted } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cmk_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cmk_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__action__cross_region_copy__encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_details__action__cross_region_copy__encryption_configuration

[@@@deriving.end]

type policy_details__action__cross_region_copy__retain_rule = {
  interval : float prop;
  interval_unit : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_details__action__cross_region_copy__retain_rule) ->
  ()

let yojson_of_policy_details__action__cross_region_copy__retain_rule
    =
  (function
   | { interval = v_interval; interval_unit = v_interval_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval_unit in
         ("interval_unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__action__cross_region_copy__retain_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_details__action__cross_region_copy__retain_rule

[@@@deriving.end]

type policy_details__action__cross_region_copy = {
  target : string prop;
  encryption_configuration :
    policy_details__action__cross_region_copy__encryption_configuration
    list;
  retain_rule :
    policy_details__action__cross_region_copy__retain_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__action__cross_region_copy) -> ()

let yojson_of_policy_details__action__cross_region_copy =
  (function
   | {
       target = v_target;
       encryption_configuration = v_encryption_configuration;
       retain_rule = v_retain_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__action__cross_region_copy__retain_rule
             v_retain_rule
         in
         ("retain_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__action__cross_region_copy__encryption_configuration
             v_encryption_configuration
         in
         ("encryption_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__action__cross_region_copy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__action__cross_region_copy

[@@@deriving.end]

type policy_details__action = {
  name : string prop;
  cross_region_copy : policy_details__action__cross_region_copy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__action) -> ()

let yojson_of_policy_details__action =
  (function
   | { name = v_name; cross_region_copy = v_cross_region_copy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__action__cross_region_copy
             v_cross_region_copy
         in
         ("cross_region_copy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__action

[@@@deriving.end]

type policy_details__event_source__parameters = {
  description_regex : string prop;
  event_type : string prop;
  snapshot_owner : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__event_source__parameters) -> ()

let yojson_of_policy_details__event_source__parameters =
  (function
   | {
       description_regex = v_description_regex;
       event_type = v_event_type;
       snapshot_owner = v_snapshot_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_snapshot_owner
         in
         ("snapshot_owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_description_regex
         in
         ("description_regex", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__event_source__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__event_source__parameters

[@@@deriving.end]

type policy_details__event_source = {
  type_ : string prop; [@key "type"]
  parameters : policy_details__event_source__parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__event_source) -> ()

let yojson_of_policy_details__event_source =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__event_source__parameters
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__event_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__event_source

[@@@deriving.end]

type policy_details__parameters = {
  exclude_boot_volume : bool prop option; [@option]
  no_reboot : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__parameters) -> ()

let yojson_of_policy_details__parameters =
  (function
   | {
       exclude_boot_volume = v_exclude_boot_volume;
       no_reboot = v_no_reboot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_no_reboot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_reboot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_boot_volume with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_boot_volume", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__parameters

[@@@deriving.end]

type policy_details__schedule__create_rule = {
  cron_expression : string prop option; [@option]
  interval : float prop option; [@option]
  interval_unit : string prop option; [@option]
  location : string prop option; [@option]
  times : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule__create_rule) -> ()

let yojson_of_policy_details__schedule__create_rule =
  (function
   | {
       cron_expression = v_cron_expression;
       interval = v_interval;
       interval_unit = v_interval_unit;
       location = v_location;
       times = v_times;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_times with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "times", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cron_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cron_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__create_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__create_rule

[@@@deriving.end]

type policy_details__schedule__cross_region_copy_rule__deprecate_rule = {
  interval : float prop;
  interval_unit : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_details__schedule__cross_region_copy_rule__deprecate_rule) ->
  ()

let yojson_of_policy_details__schedule__cross_region_copy_rule__deprecate_rule
    =
  (function
   | { interval = v_interval; interval_unit = v_interval_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval_unit in
         ("interval_unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__cross_region_copy_rule__deprecate_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_details__schedule__cross_region_copy_rule__deprecate_rule

[@@@deriving.end]

type policy_details__schedule__cross_region_copy_rule__retain_rule = {
  interval : float prop;
  interval_unit : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_details__schedule__cross_region_copy_rule__retain_rule) ->
  ()

let yojson_of_policy_details__schedule__cross_region_copy_rule__retain_rule
    =
  (function
   | { interval = v_interval; interval_unit = v_interval_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval_unit in
         ("interval_unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__cross_region_copy_rule__retain_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_details__schedule__cross_region_copy_rule__retain_rule

[@@@deriving.end]

type policy_details__schedule__cross_region_copy_rule = {
  cmk_arn : string prop option; [@option]
  copy_tags : bool prop option; [@option]
  encrypted : bool prop;
  target : string prop;
  deprecate_rule :
    policy_details__schedule__cross_region_copy_rule__deprecate_rule
    list;
  retain_rule :
    policy_details__schedule__cross_region_copy_rule__retain_rule
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_details__schedule__cross_region_copy_rule) -> ()

let yojson_of_policy_details__schedule__cross_region_copy_rule =
  (function
   | {
       cmk_arn = v_cmk_arn;
       copy_tags = v_copy_tags;
       encrypted = v_encrypted;
       target = v_target;
       deprecate_rule = v_deprecate_rule;
       retain_rule = v_retain_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__cross_region_copy_rule__retain_rule
             v_retain_rule
         in
         ("retain_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__cross_region_copy_rule__deprecate_rule
             v_deprecate_rule
         in
         ("deprecate_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         match v_copy_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cmk_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cmk_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__cross_region_copy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__cross_region_copy_rule

[@@@deriving.end]

type policy_details__schedule__deprecate_rule = {
  count : float prop option; [@option]
  interval : float prop option; [@option]
  interval_unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule__deprecate_rule) -> ()

let yojson_of_policy_details__schedule__deprecate_rule =
  (function
   | {
       count = v_count;
       interval = v_interval;
       interval_unit = v_interval_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interval_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__deprecate_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__deprecate_rule

[@@@deriving.end]

type policy_details__schedule__fast_restore_rule = {
  availability_zones : string prop list;
  count : float prop option; [@option]
  interval : float prop option; [@option]
  interval_unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule__fast_restore_rule) -> ()

let yojson_of_policy_details__schedule__fast_restore_rule =
  (function
   | {
       availability_zones = v_availability_zones;
       count = v_count;
       interval = v_interval;
       interval_unit = v_interval_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interval_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_availability_zones
         in
         ("availability_zones", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__fast_restore_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__fast_restore_rule

[@@@deriving.end]

type policy_details__schedule__retain_rule = {
  count : float prop option; [@option]
  interval : float prop option; [@option]
  interval_unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule__retain_rule) -> ()

let yojson_of_policy_details__schedule__retain_rule =
  (function
   | {
       count = v_count;
       interval = v_interval;
       interval_unit = v_interval_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interval_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__retain_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__retain_rule

[@@@deriving.end]

type policy_details__schedule__share_rule = {
  target_accounts : string prop list;
  unshare_interval : float prop option; [@option]
  unshare_interval_unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule__share_rule) -> ()

let yojson_of_policy_details__schedule__share_rule =
  (function
   | {
       target_accounts = v_target_accounts;
       unshare_interval = v_unshare_interval;
       unshare_interval_unit = v_unshare_interval_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unshare_interval_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unshare_interval_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unshare_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unshare_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_target_accounts
         in
         ("target_accounts", arg) :: bnds
       in
       `Assoc bnds
    : policy_details__schedule__share_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule__share_rule

[@@@deriving.end]

type policy_details__schedule = {
  copy_tags : bool prop option; [@option]
  name : string prop;
  tags_to_add : (string * string prop) list option; [@option]
  variable_tags : (string * string prop) list option; [@option]
  create_rule : policy_details__schedule__create_rule list;
  cross_region_copy_rule :
    policy_details__schedule__cross_region_copy_rule list;
  deprecate_rule : policy_details__schedule__deprecate_rule list;
  fast_restore_rule :
    policy_details__schedule__fast_restore_rule list;
  retain_rule : policy_details__schedule__retain_rule list;
  share_rule : policy_details__schedule__share_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details__schedule) -> ()

let yojson_of_policy_details__schedule =
  (function
   | {
       copy_tags = v_copy_tags;
       name = v_name;
       tags_to_add = v_tags_to_add;
       variable_tags = v_variable_tags;
       create_rule = v_create_rule;
       cross_region_copy_rule = v_cross_region_copy_rule;
       deprecate_rule = v_deprecate_rule;
       fast_restore_rule = v_fast_restore_rule;
       retain_rule = v_retain_rule;
       share_rule = v_share_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__share_rule
             v_share_rule
         in
         ("share_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__retain_rule
             v_retain_rule
         in
         ("retain_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__fast_restore_rule
             v_fast_restore_rule
         in
         ("fast_restore_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__deprecate_rule
             v_deprecate_rule
         in
         ("deprecate_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__cross_region_copy_rule
             v_cross_region_copy_rule
         in
         ("cross_region_copy_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_details__schedule__create_rule
             v_create_rule
         in
         ("create_rule", arg) :: bnds
       in
       let bnds =
         match v_variable_tags with
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
             let bnd = "variable_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_to_add with
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
             let bnd = "tags_to_add", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_copy_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details__schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details__schedule

[@@@deriving.end]

type policy_details = {
  policy_type : string prop option; [@option]
  resource_locations : string prop list option; [@option]
  resource_types : string prop list option; [@option]
  target_tags : (string * string prop) list option; [@option]
  action : policy_details__action list;
  event_source : policy_details__event_source list;
  parameters : policy_details__parameters list;
  schedule : policy_details__schedule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_details) -> ()

let yojson_of_policy_details =
  (function
   | {
       policy_type = v_policy_type;
       resource_locations = v_resource_locations;
       resource_types = v_resource_types;
       target_tags = v_target_tags;
       action = v_action;
       event_source = v_event_source;
       parameters = v_parameters;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_details__schedule
             v_schedule
         in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_details__parameters
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_details__event_source
             v_event_source
         in
         ("event_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_details__action v_action
         in
         ("action", arg) :: bnds
       in
       let bnds =
         match v_target_tags with
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
             let bnd = "target_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_details

[@@@deriving.end]

type aws_dlm_lifecycle_policy = {
  description : string prop;
  execution_role_arn : string prop;
  id : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  policy_details : policy_details list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dlm_lifecycle_policy) -> ()

let yojson_of_aws_dlm_lifecycle_policy =
  (function
   | {
       description = v_description;
       execution_role_arn = v_execution_role_arn;
       id = v_id;
       state = v_state;
       tags = v_tags;
       tags_all = v_tags_all;
       policy_details = v_policy_details;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_details v_policy_details
         in
         ("policy_details", arg) :: bnds
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_dlm_lifecycle_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dlm_lifecycle_policy

[@@@deriving.end]

let policy_details__action__cross_region_copy__encryption_configuration
    ?cmk_arn ?encrypted () :
    policy_details__action__cross_region_copy__encryption_configuration
    =
  { cmk_arn; encrypted }

let policy_details__action__cross_region_copy__retain_rule ~interval
    ~interval_unit () :
    policy_details__action__cross_region_copy__retain_rule =
  { interval; interval_unit }

let policy_details__action__cross_region_copy ?(retain_rule = [])
    ~target ~encryption_configuration () :
    policy_details__action__cross_region_copy =
  { target; encryption_configuration; retain_rule }

let policy_details__action ~name ~cross_region_copy () :
    policy_details__action =
  { name; cross_region_copy }

let policy_details__event_source__parameters ~description_regex
    ~event_type ~snapshot_owner () :
    policy_details__event_source__parameters =
  { description_regex; event_type; snapshot_owner }

let policy_details__event_source ~type_ ~parameters () :
    policy_details__event_source =
  { type_; parameters }

let policy_details__parameters ?exclude_boot_volume ?no_reboot () :
    policy_details__parameters =
  { exclude_boot_volume; no_reboot }

let policy_details__schedule__create_rule ?cron_expression ?interval
    ?interval_unit ?location ?times () :
    policy_details__schedule__create_rule =
  { cron_expression; interval; interval_unit; location; times }

let policy_details__schedule__cross_region_copy_rule__deprecate_rule
    ~interval ~interval_unit () :
    policy_details__schedule__cross_region_copy_rule__deprecate_rule
    =
  { interval; interval_unit }

let policy_details__schedule__cross_region_copy_rule__retain_rule
    ~interval ~interval_unit () :
    policy_details__schedule__cross_region_copy_rule__retain_rule =
  { interval; interval_unit }

let policy_details__schedule__cross_region_copy_rule ?cmk_arn
    ?copy_tags ?(deprecate_rule = []) ?(retain_rule = []) ~encrypted
    ~target () : policy_details__schedule__cross_region_copy_rule =
  {
    cmk_arn;
    copy_tags;
    encrypted;
    target;
    deprecate_rule;
    retain_rule;
  }

let policy_details__schedule__deprecate_rule ?count ?interval
    ?interval_unit () : policy_details__schedule__deprecate_rule =
  { count; interval; interval_unit }

let policy_details__schedule__fast_restore_rule ?count ?interval
    ?interval_unit ~availability_zones () :
    policy_details__schedule__fast_restore_rule =
  { availability_zones; count; interval; interval_unit }

let policy_details__schedule__retain_rule ?count ?interval
    ?interval_unit () : policy_details__schedule__retain_rule =
  { count; interval; interval_unit }

let policy_details__schedule__share_rule ?unshare_interval
    ?unshare_interval_unit ~target_accounts () :
    policy_details__schedule__share_rule =
  { target_accounts; unshare_interval; unshare_interval_unit }

let policy_details__schedule ?copy_tags ?tags_to_add ?variable_tags
    ?(deprecate_rule = []) ?(fast_restore_rule = [])
    ?(share_rule = []) ~name ~create_rule ~cross_region_copy_rule
    ~retain_rule () : policy_details__schedule =
  {
    copy_tags;
    name;
    tags_to_add;
    variable_tags;
    create_rule;
    cross_region_copy_rule;
    deprecate_rule;
    fast_restore_rule;
    retain_rule;
    share_rule;
  }

let policy_details ?policy_type ?resource_locations ?resource_types
    ?target_tags ?(action = []) ?(event_source = [])
    ?(parameters = []) ?(schedule = []) () : policy_details =
  {
    policy_type;
    resource_locations;
    resource_types;
    target_tags;
    action;
    event_source;
    parameters;
    schedule;
  }

let aws_dlm_lifecycle_policy ?id ?state ?tags ?tags_all ~description
    ~execution_role_arn ~policy_details () : aws_dlm_lifecycle_policy
    =
  {
    description;
    execution_role_arn;
    id;
    state;
    tags;
    tags_all;
    policy_details;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  execution_role_arn : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?state ?tags ?tags_all ~description ~execution_role_arn
    ~policy_details __id =
  let __type = "aws_dlm_lifecycle_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dlm_lifecycle_policy
        (aws_dlm_lifecycle_policy ?id ?state ?tags ?tags_all
           ~description ~execution_role_arn ~policy_details ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?state ?tags ?tags_all ~description
    ~execution_role_arn ~policy_details __id =
  let (r : _ Tf_core.resource) =
    make ?id ?state ?tags ?tags_all ~description ~execution_role_arn
      ~policy_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
