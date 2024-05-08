(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_backup_setting = {
  backup_options : (string * string prop) list;
  resource_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_backup_setting) -> ()

let yojson_of_advanced_backup_setting =
  (function
   | {
       backup_options = v_backup_options;
       resource_type = v_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_backup_options
         in
         ("backup_options", arg) :: bnds
       in
       `Assoc bnds
    : advanced_backup_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_backup_setting

[@@@deriving.end]

type rule__copy_action__lifecycle = {
  cold_storage_after : float prop option; [@option]
  delete_after : float prop option; [@option]
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
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
         match v_opt_in_to_archive_for_supported_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "opt_in_to_archive_for_supported_resources", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "delete_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cold_storage_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cold_storage_after", arg in
             bnd :: bnds
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

type rule__lifecycle = {
  cold_storage_after : float prop option; [@option]
  delete_after : float prop option; [@option]
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
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
         match v_opt_in_to_archive_for_supported_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "opt_in_to_archive_for_supported_resources", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "delete_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cold_storage_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cold_storage_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__lifecycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__lifecycle

[@@@deriving.end]

type rule = {
  completion_window : float prop option; [@option]
  enable_continuous_backup : bool prop option; [@option]
  recovery_point_tags : (string * string prop) list option; [@option]
  rule_name : string prop;
  schedule : string prop option; [@option]
  start_window : float prop option; [@option]
  target_vault_name : string prop;
  copy_action : rule__copy_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lifecycle : rule__lifecycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       completion_window = v_completion_window;
       enable_continuous_backup = v_enable_continuous_backup;
       recovery_point_tags = v_recovery_point_tags;
       rule_name = v_rule_name;
       schedule = v_schedule;
       start_window = v_start_window;
       target_vault_name = v_target_vault_name;
       copy_action = v_copy_action;
       lifecycle = v_lifecycle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_prop yojson_of_string v_target_vault_name
         in
         ("target_vault_name", arg) :: bnds
       in
       let bnds =
         match v_start_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       let bnds =
         match v_recovery_point_tags with
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
             let bnd = "recovery_point_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_continuous_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_continuous_backup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_completion_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "completion_window", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_backup_plan = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  advanced_backup_setting : advanced_backup_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_plan) -> ()

let yojson_of_aws_backup_plan =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       advanced_backup_setting = v_advanced_backup_setting;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_backup_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_backup_setting)
               v_advanced_backup_setting
           in
           let bnd = "advanced_backup_setting", arg in
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
    : aws_backup_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_plan

[@@@deriving.end]

let advanced_backup_setting ~backup_options ~resource_type () :
    advanced_backup_setting =
  { backup_options; resource_type }

let rule__copy_action__lifecycle ?cold_storage_after ?delete_after
    ?opt_in_to_archive_for_supported_resources () :
    rule__copy_action__lifecycle =
  {
    cold_storage_after;
    delete_after;
    opt_in_to_archive_for_supported_resources;
  }

let rule__copy_action ?(lifecycle = []) ~destination_vault_arn () :
    rule__copy_action =
  { destination_vault_arn; lifecycle }

let rule__lifecycle ?cold_storage_after ?delete_after
    ?opt_in_to_archive_for_supported_resources () : rule__lifecycle =
  {
    cold_storage_after;
    delete_after;
    opt_in_to_archive_for_supported_resources;
  }

let rule ?completion_window ?enable_continuous_backup
    ?recovery_point_tags ?schedule ?start_window ?(lifecycle = [])
    ~rule_name ~target_vault_name ~copy_action () : rule =
  {
    completion_window;
    enable_continuous_backup;
    recovery_point_tags;
    rule_name;
    schedule;
    start_window;
    target_vault_name;
    copy_action;
    lifecycle;
  }

let aws_backup_plan ?id ?tags ?tags_all ~name
    ~advanced_backup_setting ~rule () : aws_backup_plan =
  { id; name; tags; tags_all; advanced_backup_setting; rule }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ?tags_all ~name ~advanced_backup_setting ~rule
    __id =
  let __type = "aws_backup_plan" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_plan
        (aws_backup_plan ?id ?tags ?tags_all ~name
           ~advanced_backup_setting ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name
    ~advanced_backup_setting ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~advanced_backup_setting ~rule
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
