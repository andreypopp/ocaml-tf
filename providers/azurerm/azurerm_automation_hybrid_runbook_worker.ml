(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_hybrid_runbook_worker = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  vm_resource_id : string prop;  (** vm_resource_id *)
  worker_group_name : string prop;  (** worker_group_name *)
  worker_id : string prop;  (** worker_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker *)

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
