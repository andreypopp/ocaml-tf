(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_hybrid_runbook_worker_group = {
  automation_account_name : string prop;
      (** automation_account_name *)
  credential_name : string prop option; [@option]
      (** credential_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_hybrid_runbook_worker_group ?credential_name
    ?id ?timeouts ~automation_account_name ~name ~resource_group_name
    () : azurerm_automation_hybrid_runbook_worker_group =
  {
    automation_account_name;
    credential_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  credential_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?credential_name ?id ?timeouts ~automation_account_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_automation_hybrid_runbook_worker_group" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       credential_name = Prop.computed __type __id "credential_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_hybrid_runbook_worker_group
        (azurerm_automation_hybrid_runbook_worker_group
           ?credential_name ?id ?timeouts ~automation_account_name
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_name ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?credential_name ?id ?timeouts ~automation_account_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
