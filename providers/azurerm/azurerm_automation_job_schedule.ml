(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_job_schedule = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  job_schedule_id : string prop option; [@option]
      (** job_schedule_id *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  run_on : string prop option; [@option]  (** run_on *)
  runbook_name : string prop;  (** runbook_name *)
  schedule_name : string prop;  (** schedule_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_job_schedule *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_job_schedule ?id ?job_schedule_id ?parameters
    ?run_on ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name () : azurerm_automation_job_schedule
    =
  {
    automation_account_name;
    id;
    job_schedule_id;
    parameters;
    resource_group_name;
    run_on;
    runbook_name;
    schedule_name;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  job_schedule_id : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  run_on : string prop;
  runbook_name : string prop;
  schedule_name : string prop;
}

let make ?id ?job_schedule_id ?parameters ?run_on ?timeouts
    ~automation_account_name ~resource_group_name ~runbook_name
    ~schedule_name __id =
  let __type = "azurerm_automation_job_schedule" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       job_schedule_id = Prop.computed __type __id "job_schedule_id";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       run_on = Prop.computed __type __id "run_on";
       runbook_name = Prop.computed __type __id "runbook_name";
       schedule_name = Prop.computed __type __id "schedule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_job_schedule
        (azurerm_automation_job_schedule ?id ?job_schedule_id
           ?parameters ?run_on ?timeouts ~automation_account_name
           ~resource_group_name ~runbook_name ~schedule_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?job_schedule_id ?parameters ?run_on
    ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?job_schedule_id ?parameters ?run_on ?timeouts
      ~automation_account_name ~resource_group_name ~runbook_name
      ~schedule_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
