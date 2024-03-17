(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_job_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_automation_job_schedule__timeouts *)

type azurerm_automation_job_schedule = {
  automation_account_name : string;  (** automation_account_name *)
  id : string option; [@option]  (** id *)
  job_schedule_id : string option; [@option]  (** job_schedule_id *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_group_name : string;  (** resource_group_name *)
  run_on : string option; [@option]  (** run_on *)
  runbook_name : string;  (** runbook_name *)
  schedule_name : string;  (** schedule_name *)
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
