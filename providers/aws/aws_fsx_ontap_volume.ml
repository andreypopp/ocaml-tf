(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aggregate_configuration = {
  aggregates : string prop list option; [@option]
  constituents_per_aggregate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aggregate_configuration) -> ()

let yojson_of_aggregate_configuration =
  (function
   | {
       aggregates = v_aggregates;
       constituents_per_aggregate = v_constituents_per_aggregate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_constituents_per_aggregate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "constituents_per_aggregate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aggregates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aggregates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aggregate_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aggregate_configuration

[@@@deriving.end]

type snaplock_configuration__autocommit_period = {
  type_ : string prop option; [@option] [@key "type"]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snaplock_configuration__autocommit_period) -> ()

let yojson_of_snaplock_configuration__autocommit_period =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration__autocommit_period ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snaplock_configuration__autocommit_period

[@@@deriving.end]

type snaplock_configuration__retention_period__default_retention = {
  type_ : string prop option; [@option] [@key "type"]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       snaplock_configuration__retention_period__default_retention) ->
  ()

let yojson_of_snaplock_configuration__retention_period__default_retention
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration__retention_period__default_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_snaplock_configuration__retention_period__default_retention

[@@@deriving.end]

type snaplock_configuration__retention_period__maximum_retention = {
  type_ : string prop option; [@option] [@key "type"]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       snaplock_configuration__retention_period__maximum_retention) ->
  ()

let yojson_of_snaplock_configuration__retention_period__maximum_retention
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration__retention_period__maximum_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_snaplock_configuration__retention_period__maximum_retention

[@@@deriving.end]

type snaplock_configuration__retention_period__minimum_retention = {
  type_ : string prop option; [@option] [@key "type"]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       snaplock_configuration__retention_period__minimum_retention) ->
  ()

let yojson_of_snaplock_configuration__retention_period__minimum_retention
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration__retention_period__minimum_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_snaplock_configuration__retention_period__minimum_retention

[@@@deriving.end]

type snaplock_configuration__retention_period = {
  default_retention :
    snaplock_configuration__retention_period__default_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maximum_retention :
    snaplock_configuration__retention_period__maximum_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  minimum_retention :
    snaplock_configuration__retention_period__minimum_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snaplock_configuration__retention_period) -> ()

let yojson_of_snaplock_configuration__retention_period =
  (function
   | {
       default_retention = v_default_retention;
       maximum_retention = v_maximum_retention;
       minimum_retention = v_minimum_retention;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_minimum_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snaplock_configuration__retention_period__minimum_retention)
               v_minimum_retention
           in
           let bnd = "minimum_retention", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maximum_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snaplock_configuration__retention_period__maximum_retention)
               v_maximum_retention
           in
           let bnd = "maximum_retention", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snaplock_configuration__retention_period__default_retention)
               v_default_retention
           in
           let bnd = "default_retention", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration__retention_period ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snaplock_configuration__retention_period

[@@@deriving.end]

type snaplock_configuration = {
  audit_log_volume : bool prop option; [@option]
  privileged_delete : string prop option; [@option]
  snaplock_type : string prop;
  volume_append_mode_enabled : bool prop option; [@option]
  autocommit_period : snaplock_configuration__autocommit_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention_period : snaplock_configuration__retention_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snaplock_configuration) -> ()

let yojson_of_snaplock_configuration =
  (function
   | {
       audit_log_volume = v_audit_log_volume;
       privileged_delete = v_privileged_delete;
       snaplock_type = v_snaplock_type;
       volume_append_mode_enabled = v_volume_append_mode_enabled;
       autocommit_period = v_autocommit_period;
       retention_period = v_retention_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_period then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snaplock_configuration__retention_period)
               v_retention_period
           in
           let bnd = "retention_period", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autocommit_period then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snaplock_configuration__autocommit_period)
               v_autocommit_period
           in
           let bnd = "autocommit_period", arg in
           bnd :: bnds
       in
       let bnds =
         match v_volume_append_mode_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "volume_append_mode_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snaplock_type in
         ("snaplock_type", arg) :: bnds
       in
       let bnds =
         match v_privileged_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privileged_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_log_volume with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "audit_log_volume", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snaplock_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snaplock_configuration

[@@@deriving.end]

type tiering_policy = {
  cooling_period : float prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tiering_policy) -> ()

let yojson_of_tiering_policy =
  (function
   | { cooling_period = v_cooling_period; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cooling_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cooling_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tiering_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tiering_policy

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

type aws_fsx_ontap_volume = {
  bypass_snaplock_enterprise_retention : bool prop option; [@option]
  copy_tags_to_backups : bool prop option; [@option]
  final_backup_tags : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  junction_path : string prop option; [@option]
  name : string prop;
  ontap_volume_type : string prop option; [@option]
  security_style : string prop option; [@option]
  size_in_bytes : string prop option; [@option]
  size_in_megabytes : float prop option; [@option]
  skip_final_backup : bool prop option; [@option]
  snapshot_policy : string prop option; [@option]
  storage_efficiency_enabled : bool prop option; [@option]
  storage_virtual_machine_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  volume_style : string prop option; [@option]
  volume_type : string prop option; [@option]
  aggregate_configuration : aggregate_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snaplock_configuration : snaplock_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tiering_policy : tiering_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_ontap_volume) -> ()

let yojson_of_aws_fsx_ontap_volume =
  (function
   | {
       bypass_snaplock_enterprise_retention =
         v_bypass_snaplock_enterprise_retention;
       copy_tags_to_backups = v_copy_tags_to_backups;
       final_backup_tags = v_final_backup_tags;
       id = v_id;
       junction_path = v_junction_path;
       name = v_name;
       ontap_volume_type = v_ontap_volume_type;
       security_style = v_security_style;
       size_in_bytes = v_size_in_bytes;
       size_in_megabytes = v_size_in_megabytes;
       skip_final_backup = v_skip_final_backup;
       snapshot_policy = v_snapshot_policy;
       storage_efficiency_enabled = v_storage_efficiency_enabled;
       storage_virtual_machine_id = v_storage_virtual_machine_id;
       tags = v_tags;
       tags_all = v_tags_all;
       volume_style = v_volume_style;
       volume_type = v_volume_type;
       aggregate_configuration = v_aggregate_configuration;
       snaplock_configuration = v_snaplock_configuration;
       tiering_policy = v_tiering_policy;
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
         if Stdlib.( = ) [] v_tiering_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tiering_policy)
               v_tiering_policy
           in
           let bnd = "tiering_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_snaplock_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_snaplock_configuration)
               v_snaplock_configuration
           in
           let bnd = "snaplock_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aggregate_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_aggregate_configuration)
               v_aggregate_configuration
           in
           let bnd = "aggregate_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_style", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_virtual_machine_id
         in
         ("storage_virtual_machine_id", arg) :: bnds
       in
       let bnds =
         match v_storage_efficiency_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_efficiency_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_final_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_final_backup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_in_megabytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_in_megabytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_in_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size_in_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_style", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ontap_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ontap_volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_junction_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "junction_path", arg in
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
         match v_final_backup_tags with
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
             let bnd = "final_backup_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_tags_to_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_backups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_snaplock_enterprise_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_snaplock_enterprise_retention", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_ontap_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_ontap_volume

[@@@deriving.end]

let aggregate_configuration ?aggregates ?constituents_per_aggregate
    () : aggregate_configuration =
  { aggregates; constituents_per_aggregate }

let snaplock_configuration__autocommit_period ?type_ ?value () :
    snaplock_configuration__autocommit_period =
  { type_; value }

let snaplock_configuration__retention_period__default_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__default_retention =
  { type_; value }

let snaplock_configuration__retention_period__maximum_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__maximum_retention =
  { type_; value }

let snaplock_configuration__retention_period__minimum_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__minimum_retention =
  { type_; value }

let snaplock_configuration__retention_period
    ?(default_retention = []) ?(maximum_retention = [])
    ?(minimum_retention = []) () :
    snaplock_configuration__retention_period =
  { default_retention; maximum_retention; minimum_retention }

let snaplock_configuration ?audit_log_volume ?privileged_delete
    ?volume_append_mode_enabled ?(autocommit_period = [])
    ?(retention_period = []) ~snaplock_type () :
    snaplock_configuration =
  {
    audit_log_volume;
    privileged_delete;
    snaplock_type;
    volume_append_mode_enabled;
    autocommit_period;
    retention_period;
  }

let tiering_policy ?cooling_period ?name () : tiering_policy =
  { cooling_period; name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_volume ?bypass_snaplock_enterprise_retention
    ?copy_tags_to_backups ?final_backup_tags ?id ?junction_path
    ?ontap_volume_type ?security_style ?size_in_bytes
    ?size_in_megabytes ?skip_final_backup ?snapshot_policy
    ?storage_efficiency_enabled ?tags ?tags_all ?volume_style
    ?volume_type ?(aggregate_configuration = [])
    ?(snaplock_configuration = []) ?(tiering_policy = []) ?timeouts
    ~name ~storage_virtual_machine_id () : aws_fsx_ontap_volume =
  {
    bypass_snaplock_enterprise_retention;
    copy_tags_to_backups;
    final_backup_tags;
    id;
    junction_path;
    name;
    ontap_volume_type;
    security_style;
    size_in_bytes;
    size_in_megabytes;
    skip_final_backup;
    snapshot_policy;
    storage_efficiency_enabled;
    storage_virtual_machine_id;
    tags;
    tags_all;
    volume_style;
    volume_type;
    aggregate_configuration;
    snaplock_configuration;
    tiering_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  bypass_snaplock_enterprise_retention : bool prop;
  copy_tags_to_backups : bool prop;
  file_system_id : string prop;
  final_backup_tags : (string * string) list prop;
  flexcache_endpoint_type : string prop;
  id : string prop;
  junction_path : string prop;
  name : string prop;
  ontap_volume_type : string prop;
  security_style : string prop;
  size_in_bytes : string prop;
  size_in_megabytes : float prop;
  skip_final_backup : bool prop;
  snapshot_policy : string prop;
  storage_efficiency_enabled : bool prop;
  storage_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uuid : string prop;
  volume_style : string prop;
  volume_type : string prop;
}

let make ?bypass_snaplock_enterprise_retention ?copy_tags_to_backups
    ?final_backup_tags ?id ?junction_path ?ontap_volume_type
    ?security_style ?size_in_bytes ?size_in_megabytes
    ?skip_final_backup ?snapshot_policy ?storage_efficiency_enabled
    ?tags ?tags_all ?volume_style ?volume_type
    ?(aggregate_configuration = []) ?(snaplock_configuration = [])
    ?(tiering_policy = []) ?timeouts ~name
    ~storage_virtual_machine_id __id =
  let __type = "aws_fsx_ontap_volume" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bypass_snaplock_enterprise_retention =
         Prop.computed __type __id
           "bypass_snaplock_enterprise_retention";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       file_system_id = Prop.computed __type __id "file_system_id";
       final_backup_tags =
         Prop.computed __type __id "final_backup_tags";
       flexcache_endpoint_type =
         Prop.computed __type __id "flexcache_endpoint_type";
       id = Prop.computed __type __id "id";
       junction_path = Prop.computed __type __id "junction_path";
       name = Prop.computed __type __id "name";
       ontap_volume_type =
         Prop.computed __type __id "ontap_volume_type";
       security_style = Prop.computed __type __id "security_style";
       size_in_bytes = Prop.computed __type __id "size_in_bytes";
       size_in_megabytes =
         Prop.computed __type __id "size_in_megabytes";
       skip_final_backup =
         Prop.computed __type __id "skip_final_backup";
       snapshot_policy = Prop.computed __type __id "snapshot_policy";
       storage_efficiency_enabled =
         Prop.computed __type __id "storage_efficiency_enabled";
       storage_virtual_machine_id =
         Prop.computed __type __id "storage_virtual_machine_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uuid = Prop.computed __type __id "uuid";
       volume_style = Prop.computed __type __id "volume_style";
       volume_type = Prop.computed __type __id "volume_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_ontap_volume
        (aws_fsx_ontap_volume ?bypass_snaplock_enterprise_retention
           ?copy_tags_to_backups ?final_backup_tags ?id
           ?junction_path ?ontap_volume_type ?security_style
           ?size_in_bytes ?size_in_megabytes ?skip_final_backup
           ?snapshot_policy ?storage_efficiency_enabled ?tags
           ?tags_all ?volume_style ?volume_type
           ~aggregate_configuration ~snaplock_configuration
           ~tiering_policy ?timeouts ~name
           ~storage_virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_snaplock_enterprise_retention
    ?copy_tags_to_backups ?final_backup_tags ?id ?junction_path
    ?ontap_volume_type ?security_style ?size_in_bytes
    ?size_in_megabytes ?skip_final_backup ?snapshot_policy
    ?storage_efficiency_enabled ?tags ?tags_all ?volume_style
    ?volume_type ?(aggregate_configuration = [])
    ?(snaplock_configuration = []) ?(tiering_policy = []) ?timeouts
    ~name ~storage_virtual_machine_id __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_snaplock_enterprise_retention ?copy_tags_to_backups
      ?final_backup_tags ?id ?junction_path ?ontap_volume_type
      ?security_style ?size_in_bytes ?size_in_megabytes
      ?skip_final_backup ?snapshot_policy ?storage_efficiency_enabled
      ?tags ?tags_all ?volume_style ?volume_type
      ~aggregate_configuration ~snaplock_configuration
      ~tiering_policy ?timeouts ~name ~storage_virtual_machine_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
