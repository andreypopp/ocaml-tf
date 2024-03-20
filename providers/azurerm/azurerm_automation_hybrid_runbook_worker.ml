(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_automation_hybrid_runbook_worker = {
  automation_account_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  vm_resource_id : string prop;
  worker_group_name : string prop;
  worker_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_hybrid_runbook_worker) -> ()

let yojson_of_azurerm_automation_hybrid_runbook_worker =
  (function
   | {
       automation_account_name = v_automation_account_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
       vm_resource_id = v_vm_resource_id;
       worker_group_name = v_worker_group_name;
       worker_id = v_worker_id;
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
         let arg = yojson_of_prop yojson_of_string v_worker_id in
         ("worker_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_worker_group_name
         in
         ("worker_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vm_resource_id
         in
         ("vm_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_hybrid_runbook_worker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_hybrid_runbook_worker

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_hybrid_runbook_worker ?id ?timeouts
    ~automation_account_name ~resource_group_name ~vm_resource_id
    ~worker_group_name ~worker_id () :
    azurerm_automation_hybrid_runbook_worker =
  {
    automation_account_name;
    id;
    resource_group_name;
    vm_resource_id;
    worker_group_name;
    worker_id;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  ip : string prop;
  last_seen_date_time : string prop;
  registration_date_time : string prop;
  resource_group_name : string prop;
  vm_resource_id : string prop;
  worker_group_name : string prop;
  worker_id : string prop;
  worker_name : string prop;
  worker_type : string prop;
}

let make ?id ?timeouts ~automation_account_name ~resource_group_name
    ~vm_resource_id ~worker_group_name ~worker_id __id =
  let __type = "azurerm_automation_hybrid_runbook_worker" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       last_seen_date_time =
         Prop.computed __type __id "last_seen_date_time";
       registration_date_time =
         Prop.computed __type __id "registration_date_time";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       vm_resource_id = Prop.computed __type __id "vm_resource_id";
       worker_group_name =
         Prop.computed __type __id "worker_group_name";
       worker_id = Prop.computed __type __id "worker_id";
       worker_name = Prop.computed __type __id "worker_name";
       worker_type = Prop.computed __type __id "worker_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_hybrid_runbook_worker
        (azurerm_automation_hybrid_runbook_worker ?id ?timeouts
           ~automation_account_name ~resource_group_name
           ~vm_resource_id ~worker_group_name ~worker_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~automation_account_name
    ~resource_group_name ~vm_resource_id ~worker_group_name
    ~worker_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~automation_account_name ~resource_group_name
      ~vm_resource_id ~worker_group_name ~worker_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
