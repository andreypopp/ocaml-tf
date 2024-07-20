(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_storage_container_immutability_policy = {
  id : string prop option; [@option]
  immutability_period_in_days : float prop;
  locked : bool prop option; [@option]
  protected_append_writes_all_enabled : bool prop option; [@option]
  protected_append_writes_enabled : bool prop option; [@option]
  storage_container_resource_manager_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_container_immutability_policy) -> ()

let yojson_of_azurerm_storage_container_immutability_policy =
  (function
   | {
       id = v_id;
       immutability_period_in_days = v_immutability_period_in_days;
       locked = v_locked;
       protected_append_writes_all_enabled =
         v_protected_append_writes_all_enabled;
       protected_append_writes_enabled =
         v_protected_append_writes_enabled;
       storage_container_resource_manager_id =
         v_storage_container_resource_manager_id;
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
           yojson_of_prop yojson_of_string
             v_storage_container_resource_manager_id
         in
         ("storage_container_resource_manager_id", arg) :: bnds
       in
       let bnds =
         match v_protected_append_writes_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "protected_append_writes_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protected_append_writes_all_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "protected_append_writes_all_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "locked", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_immutability_period_in_days
         in
         ("immutability_period_in_days", arg) :: bnds
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
    : azurerm_storage_container_immutability_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_container_immutability_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_container_immutability_policy ?id ?locked
    ?protected_append_writes_all_enabled
    ?protected_append_writes_enabled ?timeouts
    ~immutability_period_in_days
    ~storage_container_resource_manager_id () :
    azurerm_storage_container_immutability_policy =
  {
    id;
    immutability_period_in_days;
    locked;
    protected_append_writes_all_enabled;
    protected_append_writes_enabled;
    storage_container_resource_manager_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  immutability_period_in_days : float prop;
  locked : bool prop;
  protected_append_writes_all_enabled : bool prop;
  protected_append_writes_enabled : bool prop;
  storage_container_resource_manager_id : string prop;
}

let make ?id ?locked ?protected_append_writes_all_enabled
    ?protected_append_writes_enabled ?timeouts
    ~immutability_period_in_days
    ~storage_container_resource_manager_id __id =
  let __type = "azurerm_storage_container_immutability_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       immutability_period_in_days =
         Prop.computed __type __id "immutability_period_in_days";
       locked = Prop.computed __type __id "locked";
       protected_append_writes_all_enabled =
         Prop.computed __type __id
           "protected_append_writes_all_enabled";
       protected_append_writes_enabled =
         Prop.computed __type __id "protected_append_writes_enabled";
       storage_container_resource_manager_id =
         Prop.computed __type __id
           "storage_container_resource_manager_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_container_immutability_policy
        (azurerm_storage_container_immutability_policy ?id ?locked
           ?protected_append_writes_all_enabled
           ?protected_append_writes_enabled ?timeouts
           ~immutability_period_in_days
           ~storage_container_resource_manager_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?locked
    ?protected_append_writes_all_enabled
    ?protected_append_writes_enabled ?timeouts
    ~immutability_period_in_days
    ~storage_container_resource_manager_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?locked ?protected_append_writes_all_enabled
      ?protected_append_writes_enabled ?timeouts
      ~immutability_period_in_days
      ~storage_container_resource_manager_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
