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

type azurerm_automation_webhook = {
  automation_account_name : string prop;
      (** automation_account_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  expiry_time : string prop;  (** expiry_time *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  run_on_worker_group : string prop option; [@option]
      (** run_on_worker_group *)
  runbook_name : string prop;  (** runbook_name *)
  uri : string prop option; [@option]  (** uri *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_webhook *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_webhook ?enabled ?id ?parameters
    ?run_on_worker_group ?uri ?timeouts ~automation_account_name
    ~expiry_time ~name ~resource_group_name ~runbook_name () :
    azurerm_automation_webhook =
  {
    automation_account_name;
    enabled;
    expiry_time;
    id;
    name;
    parameters;
    resource_group_name;
    run_on_worker_group;
    runbook_name;
    uri;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  enabled : bool prop;
  expiry_time : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  run_on_worker_group : string prop;
  runbook_name : string prop;
  uri : string prop;
}

let make ?enabled ?id ?parameters ?run_on_worker_group ?uri ?timeouts
    ~automation_account_name ~expiry_time ~name ~resource_group_name
    ~runbook_name __id =
  let __type = "azurerm_automation_webhook" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       enabled = Prop.computed __type __id "enabled";
       expiry_time = Prop.computed __type __id "expiry_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       run_on_worker_group =
         Prop.computed __type __id "run_on_worker_group";
       runbook_name = Prop.computed __type __id "runbook_name";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_webhook
        (azurerm_automation_webhook ?enabled ?id ?parameters
           ?run_on_worker_group ?uri ?timeouts
           ~automation_account_name ~expiry_time ~name
           ~resource_group_name ~runbook_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?parameters ?run_on_worker_group
    ?uri ?timeouts ~automation_account_name ~expiry_time ~name
    ~resource_group_name ~runbook_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?parameters ?run_on_worker_group ?uri ?timeouts
      ~automation_account_name ~expiry_time ~name
      ~resource_group_name ~runbook_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
