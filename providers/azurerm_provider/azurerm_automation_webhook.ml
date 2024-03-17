(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_webhook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_webhook__timeouts *)

type azurerm_automation_webhook = {
  automation_account_name : string;  (** automation_account_name *)
  enabled : bool option; [@option]  (** enabled *)
  expiry_time : string;  (** expiry_time *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_group_name : string;  (** resource_group_name *)
  run_on_worker_group : string option; [@option]
      (** run_on_worker_group *)
  runbook_name : string;  (** runbook_name *)
  uri : string option; [@option]  (** uri *)
  timeouts : azurerm_automation_webhook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_webhook *)

let azurerm_automation_webhook ?enabled ?id ?parameters
    ?run_on_worker_group ?uri ?timeouts ~automation_account_name
    ~expiry_time ~name ~resource_group_name ~runbook_name
    __resource_id =
  let __resource_type = "azurerm_automation_webhook" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_webhook __resource);
  ()
