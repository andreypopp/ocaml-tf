(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__actions__base_blob = {
  auto_tier_to_hot_from_cool_enabled : bool prop option; [@option]
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
  delete_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
  delete_after_days_since_modification_greater_than :
    float prop option;
      [@option]
  tier_to_archive_after_days_since_creation_greater_than :
    float prop option;
      [@option]
  tier_to_archive_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
  tier_to_archive_after_days_since_modification_greater_than :
    float prop option;
      [@option]
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
  tier_to_cold_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
  tier_to_cold_after_days_since_modification_greater_than :
    float prop option;
      [@option]
  tier_to_cool_after_days_since_creation_greater_than :
    float prop option;
      [@option]
  tier_to_cool_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
  tier_to_cool_after_days_since_modification_greater_than :
    float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__actions__base_blob) -> ()

let yojson_of_rule__actions__base_blob =
  (function
   | {
       auto_tier_to_hot_from_cool_enabled =
         v_auto_tier_to_hot_from_cool_enabled;
       delete_after_days_since_creation_greater_than =
         v_delete_after_days_since_creation_greater_than;
       delete_after_days_since_last_access_time_greater_than =
         v_delete_after_days_since_last_access_time_greater_than;
       delete_after_days_since_modification_greater_than =
         v_delete_after_days_since_modification_greater_than;
       tier_to_archive_after_days_since_creation_greater_than =
         v_tier_to_archive_after_days_since_creation_greater_than;
       tier_to_archive_after_days_since_last_access_time_greater_than =
         v_tier_to_archive_after_days_since_last_access_time_greater_than;
       tier_to_archive_after_days_since_last_tier_change_greater_than =
         v_tier_to_archive_after_days_since_last_tier_change_greater_than;
       tier_to_archive_after_days_since_modification_greater_than =
         v_tier_to_archive_after_days_since_modification_greater_than;
       tier_to_cold_after_days_since_creation_greater_than =
         v_tier_to_cold_after_days_since_creation_greater_than;
       tier_to_cold_after_days_since_last_access_time_greater_than =
         v_tier_to_cold_after_days_since_last_access_time_greater_than;
       tier_to_cold_after_days_since_modification_greater_than =
         v_tier_to_cold_after_days_since_modification_greater_than;
       tier_to_cool_after_days_since_creation_greater_than =
         v_tier_to_cool_after_days_since_creation_greater_than;
       tier_to_cool_after_days_since_last_access_time_greater_than =
         v_tier_to_cool_after_days_since_last_access_time_greater_than;
       tier_to_cool_after_days_since_modification_greater_than =
         v_tier_to_cool_after_days_since_modification_greater_than;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match
           v_tier_to_cool_after_days_since_modification_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cool_after_days_since_modification_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_cool_after_days_since_last_access_time_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cool_after_days_since_last_access_time_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_cool_after_days_since_creation_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cool_after_days_since_creation_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_cold_after_days_since_modification_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cold_after_days_since_modification_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_cold_after_days_since_last_access_time_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cold_after_days_since_last_access_time_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_cold_after_days_since_creation_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cold_after_days_since_creation_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_modification_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_modification_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_last_tier_change_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_last_tier_change_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_last_access_time_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_last_access_time_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_creation_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_creation_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_delete_after_days_since_modification_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "delete_after_days_since_modification_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_delete_after_days_since_last_access_time_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "delete_after_days_since_last_access_time_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_after_days_since_creation_greater_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "delete_after_days_since_creation_greater_than", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_auto_tier_to_hot_from_cool_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_tier_to_hot_from_cool_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__actions__base_blob -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__actions__base_blob

[@@@deriving.end]

type rule__actions__snapshot = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__actions__snapshot) -> ()

let yojson_of_rule__actions__snapshot =
  (function
   | {
       change_tier_to_archive_after_days_since_creation =
         v_change_tier_to_archive_after_days_since_creation;
       change_tier_to_cool_after_days_since_creation =
         v_change_tier_to_cool_after_days_since_creation;
       delete_after_days_since_creation_greater_than =
         v_delete_after_days_since_creation_greater_than;
       tier_to_archive_after_days_since_last_tier_change_greater_than =
         v_tier_to_archive_after_days_since_last_tier_change_greater_than;
       tier_to_cold_after_days_since_creation_greater_than =
         v_tier_to_cold_after_days_since_creation_greater_than;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match
           v_tier_to_cold_after_days_since_creation_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cold_after_days_since_creation_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_last_tier_change_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_last_tier_change_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_after_days_since_creation_greater_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "delete_after_days_since_creation_greater_than", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_change_tier_to_cool_after_days_since_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "change_tier_to_cool_after_days_since_creation", arg
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_change_tier_to_archive_after_days_since_creation
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "change_tier_to_archive_after_days_since_creation",
                 arg )
             in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__actions__snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__actions__snapshot

[@@@deriving.end]

type rule__actions__version = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
  delete_after_days_since_creation : float prop option; [@option]
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__actions__version) -> ()

let yojson_of_rule__actions__version =
  (function
   | {
       change_tier_to_archive_after_days_since_creation =
         v_change_tier_to_archive_after_days_since_creation;
       change_tier_to_cool_after_days_since_creation =
         v_change_tier_to_cool_after_days_since_creation;
       delete_after_days_since_creation =
         v_delete_after_days_since_creation;
       tier_to_archive_after_days_since_last_tier_change_greater_than =
         v_tier_to_archive_after_days_since_last_tier_change_greater_than;
       tier_to_cold_after_days_since_creation_greater_than =
         v_tier_to_cold_after_days_since_creation_greater_than;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match
           v_tier_to_cold_after_days_since_creation_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_cold_after_days_since_creation_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tier_to_archive_after_days_since_last_tier_change_greater_than
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "tier_to_archive_after_days_since_last_tier_change_greater_than",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_after_days_since_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "delete_after_days_since_creation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_tier_to_cool_after_days_since_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "change_tier_to_cool_after_days_since_creation", arg
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_change_tier_to_archive_after_days_since_creation
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "change_tier_to_archive_after_days_since_creation",
                 arg )
             in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__actions__version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__actions__version

[@@@deriving.end]

type rule__actions = {
  base_blob : rule__actions__base_blob list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot : rule__actions__snapshot list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  version : rule__actions__version list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__actions) -> ()

let yojson_of_rule__actions =
  (function
   | {
       base_blob = v_base_blob;
       snapshot = v_snapshot;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_version then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__actions__version)
               v_version
           in
           let bnd = "version", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__actions__snapshot)
               v_snapshot
           in
           let bnd = "snapshot", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_base_blob then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__actions__base_blob)
               v_base_blob
           in
           let bnd = "base_blob", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__actions

[@@@deriving.end]

type rule__filters__match_blob_index_tag = {
  name : string prop;
  operation : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filters__match_blob_index_tag) -> ()

let yojson_of_rule__filters__match_blob_index_tag =
  (function
   | { name = v_name; operation = v_operation; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_operation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : rule__filters__match_blob_index_tag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filters__match_blob_index_tag

[@@@deriving.end]

type rule__filters = {
  blob_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_match : string prop list option; [@option]
  match_blob_index_tag : rule__filters__match_blob_index_tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filters) -> ()

let yojson_of_rule__filters =
  (function
   | {
       blob_types = v_blob_types;
       prefix_match = v_prefix_match;
       match_blob_index_tag = v_match_blob_index_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_blob_index_tag then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__filters__match_blob_index_tag)
               v_match_blob_index_tag
           in
           let bnd = "match_blob_index_tag", arg in
           bnd :: bnds
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_blob_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_blob_types
           in
           let bnd = "blob_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filters

[@@@deriving.end]

type rule = {
  enabled : bool prop;
  name : string prop;
  actions : rule__actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filters : rule__filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       actions = v_actions;
       filters = v_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__filters) v_filters
           in
           let bnd = "filters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__actions) v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

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

type azurerm_storage_management_policy = {
  id : string prop option; [@option]
  storage_account_id : string prop;
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_management_policy) -> ()

let yojson_of_azurerm_storage_management_policy =
  (function
   | {
       id = v_id;
       storage_account_id = v_storage_account_id;
       rule = v_rule;
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
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
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
    : azurerm_storage_management_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_management_policy

[@@@deriving.end]

let rule__actions__base_blob ?auto_tier_to_hot_from_cool_enabled
    ?delete_after_days_since_creation_greater_than
    ?delete_after_days_since_last_access_time_greater_than
    ?delete_after_days_since_modification_greater_than
    ?tier_to_archive_after_days_since_creation_greater_than
    ?tier_to_archive_after_days_since_last_access_time_greater_than
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_archive_after_days_since_modification_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than
    ?tier_to_cold_after_days_since_last_access_time_greater_than
    ?tier_to_cold_after_days_since_modification_greater_than
    ?tier_to_cool_after_days_since_creation_greater_than
    ?tier_to_cool_after_days_since_last_access_time_greater_than
    ?tier_to_cool_after_days_since_modification_greater_than () :
    rule__actions__base_blob =
  {
    auto_tier_to_hot_from_cool_enabled;
    delete_after_days_since_creation_greater_than;
    delete_after_days_since_last_access_time_greater_than;
    delete_after_days_since_modification_greater_than;
    tier_to_archive_after_days_since_creation_greater_than;
    tier_to_archive_after_days_since_last_access_time_greater_than;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_archive_after_days_since_modification_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
    tier_to_cold_after_days_since_last_access_time_greater_than;
    tier_to_cold_after_days_since_modification_greater_than;
    tier_to_cool_after_days_since_creation_greater_than;
    tier_to_cool_after_days_since_last_access_time_greater_than;
    tier_to_cool_after_days_since_modification_greater_than;
  }

let rule__actions__snapshot
    ?change_tier_to_archive_after_days_since_creation
    ?change_tier_to_cool_after_days_since_creation
    ?delete_after_days_since_creation_greater_than
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than () :
    rule__actions__snapshot =
  {
    change_tier_to_archive_after_days_since_creation;
    change_tier_to_cool_after_days_since_creation;
    delete_after_days_since_creation_greater_than;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
  }

let rule__actions__version
    ?change_tier_to_archive_after_days_since_creation
    ?change_tier_to_cool_after_days_since_creation
    ?delete_after_days_since_creation
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than () :
    rule__actions__version =
  {
    change_tier_to_archive_after_days_since_creation;
    change_tier_to_cool_after_days_since_creation;
    delete_after_days_since_creation;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
  }

let rule__actions ?(base_blob = []) ?(snapshot = []) ?(version = [])
    () : rule__actions =
  { base_blob; snapshot; version }

let rule__filters__match_blob_index_tag ?operation ~name ~value () :
    rule__filters__match_blob_index_tag =
  { name; operation; value }

let rule__filters ?prefix_match ~blob_types ~match_blob_index_tag ()
    : rule__filters =
  { blob_types; prefix_match; match_blob_index_tag }

let rule ~enabled ~name ~actions ~filters () : rule =
  { enabled; name; actions; filters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_management_policy ?id ?(rule = []) ?timeouts
    ~storage_account_id () : azurerm_storage_management_policy =
  { id; storage_account_id; rule; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  storage_account_id : string prop;
}

let make ?id ?(rule = []) ?timeouts ~storage_account_id __id =
  let __type = "azurerm_storage_management_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_management_policy
        (azurerm_storage_management_policy ?id ~rule ?timeouts
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(rule = []) ?timeouts
    ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~rule ?timeouts ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
