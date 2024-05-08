(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

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

type azurerm_monitor_log_profile = {
  categories : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  servicebus_rule_id : string prop option; [@option]
  storage_account_id : string prop option; [@option]
  retention_policy : retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_log_profile) -> ()

let yojson_of_azurerm_monitor_log_profile =
  (function
   | {
       categories = v_categories;
       id = v_id;
       locations = v_locations;
       name = v_name;
       servicebus_rule_id = v_servicebus_rule_id;
       storage_account_id = v_storage_account_id;
       retention_policy = v_retention_policy;
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
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_servicebus_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "servicebus_rule_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_locations
           in
           let bnd = "locations", arg in
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
         if Stdlib.( = ) [] v_categories then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_categories
           in
           let bnd = "categories", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_log_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_log_profile

[@@@deriving.end]

let retention_policy ?days ~enabled () : retention_policy =
  { days; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_log_profile ?id ?servicebus_rule_id
    ?storage_account_id ?timeouts ~categories ~locations ~name
    ~retention_policy () : azurerm_monitor_log_profile =
  {
    categories;
    id;
    locations;
    name;
    servicebus_rule_id;
    storage_account_id;
    retention_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

let make ?id ?servicebus_rule_id ?storage_account_id ?timeouts
    ~categories ~locations ~name ~retention_policy __id =
  let __type = "azurerm_monitor_log_profile" in
  let __attrs =
    ({
       tf_name = __id;
       categories = Prop.computed __type __id "categories";
       id = Prop.computed __type __id "id";
       locations = Prop.computed __type __id "locations";
       name = Prop.computed __type __id "name";
       servicebus_rule_id =
         Prop.computed __type __id "servicebus_rule_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_log_profile
        (azurerm_monitor_log_profile ?id ?servicebus_rule_id
           ?storage_account_id ?timeouts ~categories ~locations ~name
           ~retention_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?servicebus_rule_id ?storage_account_id
    ?timeouts ~categories ~locations ~name ~retention_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?servicebus_rule_id ?storage_account_id ?timeouts
      ~categories ~locations ~name ~retention_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
