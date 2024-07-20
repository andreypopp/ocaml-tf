(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__lifecycle = {
  cold_storage_after : float prop;
  delete_after : float prop;
  opt_in_to_archive_for_supported_resources : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__lifecycle) -> ()

let yojson_of_rule__lifecycle =
  (function
   | {
       cold_storage_after = v_cold_storage_after;
       delete_after = v_delete_after;
       opt_in_to_archive_for_supported_resources =
         v_opt_in_to_archive_for_supported_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_opt_in_to_archive_for_supported_resources
         in
         ("opt_in_to_archive_for_supported_resources", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_delete_after in
         ("delete_after", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cold_storage_after
         in
         ("cold_storage_after", arg) :: bnds
       in
       `Assoc bnds
    : rule__lifecycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__lifecycle

[@@@deriving.end]

type rule__copy_action__lifecycle = {
  cold_storage_after : float prop;
  delete_after : float prop;
  opt_in_to_archive_for_supported_resources : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__copy_action__lifecycle) -> ()

let yojson_of_rule__copy_action__lifecycle =
  (function
   | {
       cold_storage_after = v_cold_storage_after;
       delete_after = v_delete_after;
       opt_in_to_archive_for_supported_resources =
         v_opt_in_to_archive_for_supported_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_opt_in_to_archive_for_supported_resources
         in
         ("opt_in_to_archive_for_supported_resources", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_delete_after in
         ("delete_after", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cold_storage_after
         in
         ("cold_storage_after", arg) :: bnds
       in
       `Assoc bnds
    : rule__copy_action__lifecycle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__copy_action__lifecycle

[@@@deriving.end]

type rule__copy_action = {
  destination_vault_arn : string prop;
  lifecycle : rule__copy_action__lifecycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__copy_action) -> ()

let yojson_of_rule__copy_action =
  (function
   | {
       destination_vault_arn = v_destination_vault_arn;
       lifecycle = v_lifecycle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lifecycle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__copy_action__lifecycle)
               v_lifecycle
           in
           let bnd = "lifecycle", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_vault_arn
         in
         ("destination_vault_arn", arg) :: bnds
       in
       `Assoc bnds
    : rule__copy_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__copy_action

[@@@deriving.end]

type rule = {
  completion_window : float prop;
  copy_action : rule__copy_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enable_continuous_backup : bool prop;
  lifecycle : rule__lifecycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recovery_point_tags : (string * string prop) list;
  rule_name : string prop;
  schedule : string prop;
  start_window : float prop;
  target_vault_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       completion_window = v_completion_window;
       copy_action = v_copy_action;
       enable_continuous_backup = v_enable_continuous_backup;
       lifecycle = v_lifecycle;
       recovery_point_tags = v_recovery_point_tags;
       rule_name = v_rule_name;
       schedule = v_schedule;
       start_window = v_start_window;
       target_vault_name = v_target_vault_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_vault_name
         in
         ("target_vault_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_window in
         ("start_window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_recovery_point_tags
         in
         ("recovery_point_tags", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lifecycle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__lifecycle) v_lifecycle
           in
           let bnd = "lifecycle", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_continuous_backup
         in
         ("enable_continuous_backup", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_copy_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__copy_action)
               v_copy_action
           in
           let bnd = "copy_action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_completion_window
         in
         ("completion_window", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_backup_plan = {
  id : string prop option; [@option]
  plan_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_plan) -> ()

let yojson_of_aws_backup_plan =
  (function
   | { id = v_id; plan_id = v_plan_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_plan_id in
         ("plan_id", arg) :: bnds
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
    : aws_backup_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_plan

[@@@deriving.end]

let aws_backup_plan ?id ?tags ~plan_id () : aws_backup_plan =
  { id; plan_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  rule : rule list prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ~plan_id __id =
  let __type = "aws_backup_plan" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       plan_id = Prop.computed __type __id "plan_id";
       rule = Prop.computed __type __id "rule";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_plan
        (aws_backup_plan ?id ?tags ~plan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~plan_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~plan_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
