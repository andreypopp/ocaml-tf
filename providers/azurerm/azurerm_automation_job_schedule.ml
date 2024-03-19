(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?job_schedule_id ?parameters ?run_on
    ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name __resource_id =
  let __resource_type = "azurerm_automation_job_schedule" in
  let __resource =
    azurerm_automation_job_schedule ?id ?job_schedule_id ?parameters
      ?run_on ?timeouts ~automation_account_name ~resource_group_name
      ~runbook_name ~schedule_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_job_schedule __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       id = Prop.computed __resource_type __resource_id "id";
       job_schedule_id =
         Prop.computed __resource_type __resource_id
           "job_schedule_id";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       run_on = Prop.computed __resource_type __resource_id "run_on";
       runbook_name =
         Prop.computed __resource_type __resource_id "runbook_name";
       schedule_name =
         Prop.computed __resource_type __resource_id "schedule_name";
     }
      : t)
  in
  __resource_attributes
