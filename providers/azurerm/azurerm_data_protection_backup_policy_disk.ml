(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule__criteria) -> ()

let yojson_of_retention_rule__criteria =
  (function
   | { absolute_criteria = v_absolute_criteria } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_absolute_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "absolute_criteria", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_rule__criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_rule__criteria

[@@@deriving.end]

type retention_rule = {
  duration : string prop;
  name : string prop;
  priority : float prop;
  criteria : retention_rule__criteria list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule) -> ()

let yojson_of_retention_rule =
  (function
   | {
       duration = v_duration;
       name = v_name;
       priority = v_priority;
       criteria = v_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retention_rule__criteria
             v_criteria
         in
         ("criteria", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : retention_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_rule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_data_protection_backup_policy_disk = {
  backup_repeating_time_intervals : string prop list;
  default_retention_duration : string prop;
  id : string prop option; [@option]
  name : string prop;
  time_zone : string prop option; [@option]
  vault_id : string prop;
  retention_rule : retention_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_protection_backup_policy_disk) -> ()

let yojson_of_azurerm_data_protection_backup_policy_disk =
  (function
   | {
       backup_repeating_time_intervals =
         v_backup_repeating_time_intervals;
       default_retention_duration = v_default_retention_duration;
       id = v_id;
       name = v_name;
       time_zone = v_time_zone;
       vault_id = v_vault_id;
       retention_rule = v_retention_rule;
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
           yojson_of_list yojson_of_retention_rule v_retention_rule
         in
         ("retention_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_retention_duration
         in
         ("default_retention_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_backup_repeating_time_intervals
         in
         ("backup_repeating_time_intervals", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_policy_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_protection_backup_policy_disk

[@@@deriving.end]

let retention_rule__criteria ?absolute_criteria () :
    retention_rule__criteria =
  { absolute_criteria }

let retention_rule ~duration ~name ~priority ~criteria () :
    retention_rule =
  { duration; name; priority; criteria }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_disk ?id ?time_zone
    ?(retention_rule = []) ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~vault_id () :
    azurerm_data_protection_backup_policy_disk =
  {
    backup_repeating_time_intervals;
    default_retention_duration;
    id;
    name;
    time_zone;
    vault_id;
    retention_rule;
    timeouts;
  }

type t = {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  time_zone : string prop;
  vault_id : string prop;
}

let make ?id ?time_zone ?(retention_rule = []) ?timeouts
    ~backup_repeating_time_intervals ~default_retention_duration
    ~name ~vault_id __id =
  let __type = "azurerm_data_protection_backup_policy_disk" in
  let __attrs =
    ({
       backup_repeating_time_intervals =
         Prop.computed __type __id "backup_repeating_time_intervals";
       default_retention_duration =
         Prop.computed __type __id "default_retention_duration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       time_zone = Prop.computed __type __id "time_zone";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_disk
        (azurerm_data_protection_backup_policy_disk ?id ?time_zone
           ~retention_rule ?timeouts ~backup_repeating_time_intervals
           ~default_retention_duration ~name ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?time_zone ?(retention_rule = [])
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?time_zone ~retention_rule ?timeouts
      ~backup_repeating_time_intervals ~default_retention_duration
      ~name ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
