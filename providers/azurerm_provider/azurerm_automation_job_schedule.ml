(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_job_schedule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_automation_job_schedule__timeouts *)

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
  timeouts : azurerm_automation_job_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_job_schedule *)

let azurerm_automation_job_schedule ?id ?job_schedule_id ?parameters
    ?run_on ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name __resource_id =
  let __resource_type = "azurerm_automation_job_schedule" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_job_schedule __resource);
  ()
