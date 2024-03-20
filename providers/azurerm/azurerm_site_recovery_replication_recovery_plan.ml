(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_to_azure_settings = {
  primary_edge_zone : string prop option; [@option]
  primary_zone : string prop option; [@option]
  recovery_edge_zone : string prop option; [@option]
  recovery_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_to_azure_settings) -> ()

let yojson_of_azure_to_azure_settings =
  (function
   | {
       primary_edge_zone = v_primary_edge_zone;
       primary_zone = v_primary_zone;
       recovery_edge_zone = v_recovery_edge_zone;
       recovery_zone = v_recovery_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recovery_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_edge_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azure_to_azure_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_to_azure_settings

[@@@deriving.end]

type boot_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_recovery_group__post_action) -> ()

let yojson_of_boot_recovery_group__post_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_recovery_group__post_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_recovery_group__post_action

[@@@deriving.end]

type boot_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_recovery_group__pre_action) -> ()

let yojson_of_boot_recovery_group__pre_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_recovery_group__pre_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_recovery_group__pre_action

[@@@deriving.end]

type boot_recovery_group = {
  replicated_protected_items : string prop list option; [@option]
  post_action : boot_recovery_group__post_action list;
  pre_action : boot_recovery_group__pre_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_recovery_group) -> ()

let yojson_of_boot_recovery_group =
  (function
   | {
       replicated_protected_items = v_replicated_protected_items;
       post_action = v_post_action;
       pre_action = v_pre_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_boot_recovery_group__pre_action
             v_pre_action
         in
         ("pre_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_boot_recovery_group__post_action
             v_post_action
         in
         ("post_action", arg) :: bnds
       in
       let bnds =
         match v_replicated_protected_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "replicated_protected_items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_recovery_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_recovery_group

[@@@deriving.end]

type failover_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : failover_recovery_group__post_action) -> ()

let yojson_of_failover_recovery_group__post_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : failover_recovery_group__post_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failover_recovery_group__post_action

[@@@deriving.end]

type failover_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : failover_recovery_group__pre_action) -> ()

let yojson_of_failover_recovery_group__pre_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : failover_recovery_group__pre_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failover_recovery_group__pre_action

[@@@deriving.end]

type failover_recovery_group = {
  post_action : failover_recovery_group__post_action list;
  pre_action : failover_recovery_group__pre_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : failover_recovery_group) -> ()

let yojson_of_failover_recovery_group =
  (function
   | { post_action = v_post_action; pre_action = v_pre_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_failover_recovery_group__pre_action
             v_pre_action
         in
         ("pre_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_failover_recovery_group__post_action
             v_post_action
         in
         ("post_action", arg) :: bnds
       in
       `Assoc bnds
    : failover_recovery_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failover_recovery_group

[@@@deriving.end]

type recovery_group__post_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recovery_group__post_action) -> ()

let yojson_of_recovery_group__post_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recovery_group__post_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group__post_action

[@@@deriving.end]

type recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recovery_group__pre_action) -> ()

let yojson_of_recovery_group__pre_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recovery_group__pre_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group__pre_action

[@@@deriving.end]

type recovery_group = {
  replicated_protected_items : string prop list option; [@option]
  type_ : string prop; [@key "type"]
  post_action : recovery_group__post_action list;
  pre_action : recovery_group__pre_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recovery_group) -> ()

let yojson_of_recovery_group =
  (function
   | {
       replicated_protected_items = v_replicated_protected_items;
       type_ = v_type_;
       post_action = v_post_action;
       pre_action = v_pre_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_recovery_group__pre_action
             v_pre_action
         in
         ("pre_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_recovery_group__post_action
             v_post_action
         in
         ("post_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_replicated_protected_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "replicated_protected_items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recovery_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group

[@@@deriving.end]

type shutdown_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shutdown_recovery_group__post_action) -> ()

let yojson_of_shutdown_recovery_group__post_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : shutdown_recovery_group__post_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shutdown_recovery_group__post_action

[@@@deriving.end]

type shutdown_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
  fail_over_directions : string prop list;
  fail_over_types : string prop list;
  manual_action_instruction : string prop option; [@option]
  name : string prop;
  runbook_id : string prop option; [@option]
  script_path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shutdown_recovery_group__pre_action) -> ()

let yojson_of_shutdown_recovery_group__pre_action =
  (function
   | {
       fabric_location = v_fabric_location;
       fail_over_directions = v_fail_over_directions;
       fail_over_types = v_fail_over_types;
       manual_action_instruction = v_manual_action_instruction;
       name = v_name;
       runbook_id = v_runbook_id;
       script_path = v_script_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_script_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runbook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runbook_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manual_action_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_action_instruction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_types
         in
         ("fail_over_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_fail_over_directions
         in
         ("fail_over_directions", arg) :: bnds
       in
       let bnds =
         match v_fabric_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fabric_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : shutdown_recovery_group__pre_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shutdown_recovery_group__pre_action

[@@@deriving.end]

type shutdown_recovery_group = {
  post_action : shutdown_recovery_group__post_action list;
  pre_action : shutdown_recovery_group__pre_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shutdown_recovery_group) -> ()

let yojson_of_shutdown_recovery_group =
  (function
   | { post_action = v_post_action; pre_action = v_pre_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_shutdown_recovery_group__pre_action
             v_pre_action
         in
         ("pre_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_shutdown_recovery_group__post_action
             v_post_action
         in
         ("post_action", arg) :: bnds
       in
       `Assoc bnds
    : shutdown_recovery_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shutdown_recovery_group

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

type azurerm_site_recovery_replication_recovery_plan = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
  azure_to_azure_settings : azure_to_azure_settings list;
  boot_recovery_group : boot_recovery_group list;
  failover_recovery_group : failover_recovery_group list;
  recovery_group : recovery_group list;
  shutdown_recovery_group : shutdown_recovery_group list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_site_recovery_replication_recovery_plan) -> ()

let yojson_of_azurerm_site_recovery_replication_recovery_plan =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_vault_id = v_recovery_vault_id;
       source_recovery_fabric_id = v_source_recovery_fabric_id;
       target_recovery_fabric_id = v_target_recovery_fabric_id;
       azure_to_azure_settings = v_azure_to_azure_settings;
       boot_recovery_group = v_boot_recovery_group;
       failover_recovery_group = v_failover_recovery_group;
       recovery_group = v_recovery_group;
       shutdown_recovery_group = v_shutdown_recovery_group;
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
           yojson_of_list yojson_of_shutdown_recovery_group
             v_shutdown_recovery_group
         in
         ("shutdown_recovery_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_recovery_group v_recovery_group
         in
         ("recovery_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_failover_recovery_group
             v_failover_recovery_group
         in
         ("failover_recovery_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_boot_recovery_group
             v_boot_recovery_group
         in
         ("boot_recovery_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_to_azure_settings
             v_azure_to_azure_settings
         in
         ("azure_to_azure_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_target_recovery_fabric_id
         in
         ("target_recovery_fabric_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_recovery_fabric_id
         in
         ("source_recovery_fabric_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_id
         in
         ("recovery_vault_id", arg) :: bnds
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
    : azurerm_site_recovery_replication_recovery_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_replication_recovery_plan

[@@@deriving.end]

let azure_to_azure_settings ?primary_edge_zone ?primary_zone
    ?recovery_edge_zone ?recovery_zone () : azure_to_azure_settings =
  {
    primary_edge_zone;
    primary_zone;
    recovery_edge_zone;
    recovery_zone;
  }

let boot_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    boot_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let boot_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    boot_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let boot_recovery_group ?replicated_protected_items ~post_action
    ~pre_action () : boot_recovery_group =
  { replicated_protected_items; post_action; pre_action }

let failover_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    failover_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let failover_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    failover_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let failover_recovery_group ~post_action ~pre_action () :
    failover_recovery_group =
  { post_action; pre_action }

let recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let recovery_group ?replicated_protected_items ~type_ ~post_action
    ~pre_action () : recovery_group =
  { replicated_protected_items; type_; post_action; pre_action }

let shutdown_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    shutdown_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let shutdown_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    shutdown_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let shutdown_recovery_group ~post_action ~pre_action () :
    shutdown_recovery_group =
  { post_action; pre_action }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_replication_recovery_plan ?id ?timeouts
    ~name ~recovery_vault_id ~source_recovery_fabric_id
    ~target_recovery_fabric_id ~azure_to_azure_settings
    ~boot_recovery_group ~failover_recovery_group ~recovery_group
    ~shutdown_recovery_group () :
    azurerm_site_recovery_replication_recovery_plan =
  {
    id;
    name;
    recovery_vault_id;
    source_recovery_fabric_id;
    target_recovery_fabric_id;
    azure_to_azure_settings;
    boot_recovery_group;
    failover_recovery_group;
    recovery_group;
    shutdown_recovery_group;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_id
    ~source_recovery_fabric_id ~target_recovery_fabric_id
    ~azure_to_azure_settings ~boot_recovery_group
    ~failover_recovery_group ~recovery_group ~shutdown_recovery_group
    __id =
  let __type = "azurerm_site_recovery_replication_recovery_plan" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       source_recovery_fabric_id =
         Prop.computed __type __id "source_recovery_fabric_id";
       target_recovery_fabric_id =
         Prop.computed __type __id "target_recovery_fabric_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_replication_recovery_plan
        (azurerm_site_recovery_replication_recovery_plan ?id
           ?timeouts ~name ~recovery_vault_id
           ~source_recovery_fabric_id ~target_recovery_fabric_id
           ~azure_to_azure_settings ~boot_recovery_group
           ~failover_recovery_group ~recovery_group
           ~shutdown_recovery_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id
    ~source_recovery_fabric_id ~target_recovery_fabric_id
    ~azure_to_azure_settings ~boot_recovery_group
    ~failover_recovery_group ~recovery_group ~shutdown_recovery_group
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_id
      ~source_recovery_fabric_id ~target_recovery_fabric_id
      ~azure_to_azure_settings ~boot_recovery_group
      ~failover_recovery_group ~recovery_group
      ~shutdown_recovery_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
