(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azure_to_azure_settings = {
  primary_edge_zone : string prop;
  primary_zone : string prop;
  recovery_edge_zone : string prop;
  recovery_zone : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_recovery_zone in
         ("recovery_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_edge_zone
         in
         ("recovery_edge_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_zone in
         ("primary_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_edge_zone
         in
         ("primary_edge_zone", arg) :: bnds
       in
       `Assoc bnds
    : azure_to_azure_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_to_azure_settings

[@@@deriving.end]

type recovery_group__pre_action = {
  fabric_location : string prop;
  fail_over_directions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  fail_over_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  manual_action_instruction : string prop;
  name : string prop;
  runbook_id : string prop;
  script_path : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_script_path in
         ("script_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_id in
         ("runbook_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_manual_action_instruction
         in
         ("manual_action_instruction", arg) :: bnds
       in
       let bnds =
         if [] = v_fail_over_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fail_over_types
           in
           let bnd = "fail_over_types", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fail_over_directions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fail_over_directions
           in
           let bnd = "fail_over_directions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_fabric_location
         in
         ("fabric_location", arg) :: bnds
       in
       `Assoc bnds
    : recovery_group__pre_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group__pre_action

[@@@deriving.end]

type recovery_group__post_action = {
  fabric_location : string prop;
  fail_over_directions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  fail_over_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  manual_action_instruction : string prop;
  name : string prop;
  runbook_id : string prop;
  script_path : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_script_path in
         ("script_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_id in
         ("runbook_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_manual_action_instruction
         in
         ("manual_action_instruction", arg) :: bnds
       in
       let bnds =
         if [] = v_fail_over_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fail_over_types
           in
           let bnd = "fail_over_types", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fail_over_directions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fail_over_directions
           in
           let bnd = "fail_over_directions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_fabric_location
         in
         ("fabric_location", arg) :: bnds
       in
       `Assoc bnds
    : recovery_group__post_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group__post_action

[@@@deriving.end]

type recovery_group = {
  post_action : recovery_group__post_action list list;
      [@default []] [@yojson_drop_default ( = )]
  pre_action : recovery_group__pre_action list list;
      [@default []] [@yojson_drop_default ( = )]
  replicated_protected_items : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recovery_group) -> ()

let yojson_of_recovery_group =
  (function
   | {
       post_action = v_post_action;
       pre_action = v_pre_action;
       replicated_protected_items = v_replicated_protected_items;
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
         if [] = v_replicated_protected_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_replicated_protected_items
           in
           let bnd = "replicated_protected_items", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_pre_action then bnds
         else
           let arg =
             (yojson_of_list
                (yojson_of_list yojson_of_recovery_group__pre_action))
               v_pre_action
           in
           let bnd = "pre_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_post_action then bnds
         else
           let arg =
             (yojson_of_list
                (yojson_of_list yojson_of_recovery_group__post_action))
               v_post_action
           in
           let bnd = "post_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : recovery_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recovery_group

[@@@deriving.end]

type azurerm_site_recovery_replication_recovery_plan = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_id : string prop;
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

let timeouts ?read () : timeouts = { read }

let azurerm_site_recovery_replication_recovery_plan ?id ?timeouts
    ~name ~recovery_vault_id () :
    azurerm_site_recovery_replication_recovery_plan =
  { id; name; recovery_vault_id; timeouts }

type t = {
  tf_name : string;
  azure_to_azure_settings : azure_to_azure_settings list prop;
  failover_deployment_model : string prop;
  id : string prop;
  name : string prop;
  recovery_group : recovery_group list prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_id __id =
  let __type = "azurerm_site_recovery_replication_recovery_plan" in
  let __attrs =
    ({
       tf_name = __id;
       azure_to_azure_settings =
         Prop.computed __type __id "azure_to_azure_settings";
       failover_deployment_model =
         Prop.computed __type __id "failover_deployment_model";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_group = Prop.computed __type __id "recovery_group";
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
           ?timeouts ~name ~recovery_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
