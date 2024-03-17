(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_webhook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_webhook__timeouts *)

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
